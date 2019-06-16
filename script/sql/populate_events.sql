INSERT INTO actor (
    id,
    login,
    gravatar_id,
    url,
    avatar_url
) SELECT
   data_json->'actor'['id'],
   data_json->'actor'['login'],
   data_json->'actor'['gravatar_id'],
   data_json->'actor'['url'],
   data_json->'actor'['avatar_url']
FROM events_raw
WHERE data_json->'type' = 'PushEvents';

INSERT INTO actor (
    id,
    login,
    gravatar_id,
    url,
    avatar_url
) SELECT
   data_json->'actor'['id'],
   data_json->'actor'['login'],
   data_json->'actor'['gravatar_id'],
   data_json->'actor'['url'],
   data_json->'actor'['avatar_url']
FROM events_raw
WHERE data_json->'type' = 'PullRequestEvent';

INSERT INTO repo (
    id,
    name,
    url,
) SELECT
   data_json->'repo'['id'],
   data_json->'repo'['name'],
   data_json->'repo'['url'],
FROM events_raw
WHERE data_json->'type' = 'PushEvents';

INSERT INTO repo (
    id,
    name,
    url,
) SELECT
   data_json->'repo'['id'],
   data_json->'repo'['name'],
   data_json->'repo'['url'],
FROM events_raw
WHERE data_json->'type' = 'PullEventRequest';


INSERT INTO pushEvent (
    id_actor,
    id_repo,
    type,
    branch
) SELECT
   data_json->'actor'['id'],
   data_json->'repo'['id'],
   data_json->'type',
   data_json->'payload'['ref']
FROM events_raw
WHERE data_json->'type' = 'PushEvents';



INSERT INTO pullRequestEvent (
    id_repo,
    id_repo,
    type,
    pullNumber
) SELECT
    data_json->'actor'['id'],
    data_json->'repo'['id'],
    data_json->'type',
    data_json->'payload'['number']
FROM events_raw
WHERE data_json->'type' = 'PullResquestEvent';
