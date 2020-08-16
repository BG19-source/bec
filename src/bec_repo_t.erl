%%==============================================================================
%% Type definition for the Repo data structure
%%==============================================================================
-module(bec_repo_t).

%%==============================================================================
%% Exports
%%==============================================================================
-export([ from_map/1, to_map/1]).

-include("bitbucket.hrl").

%%==============================================================================
%% Types
%%==============================================================================
-type repo() :: #{ public => boolean() }.

%%==============================================================================
%% Export Types
%%==============================================================================
-export_type([ repo/0
             ]).

%%==============================================================================
%% API
%%==============================================================================
-spec from_map(map()) -> repo().
from_map(#{ <<"public">> := Public }) ->
  #{ public => Public }.

-spec to_map(repo()) -> map().
to_map(#{ public := Public }) ->
  #{ <<"public">> => Public }.
