%%==============================================================================
%% Type definition for the Workzone User data structure
%%==============================================================================
-module(bec_wz_user_t).

%%==============================================================================
%% Exports
%%==============================================================================
-export([ from_map/1, to_map/1]).

-include("bitbucket.hrl").

%%==============================================================================
%% Types
%%==============================================================================
-type name() :: binary().

%%==============================================================================
%% Export Types
%%==============================================================================
-export_type([ name/0 ]).

%%==============================================================================
%% API
%%==============================================================================
-spec from_map(map()) -> name().
from_map(#{ <<"name">> := Name }) ->
  Name.

-spec to_map(name()) -> map().
to_map(Name) ->
  #{ <<"name">> => Name }.
