{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='subjectAccessReviewSpec', url='', help='SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set'),
  '#nonResourceAttributes':: d.obj(help='NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface'),
  nonResourceAttributes: {
    '#withPath':: d.fn(help='Path is the URL path of the request', args=[d.arg(name='path', type=d.T.string)]),
    withPath(path): { nonResourceAttributes+: { path: path } },
    '#withVerb':: d.fn(help='Verb is the standard HTTP verb', args=[d.arg(name='verb', type=d.T.string)]),
    withVerb(verb): { nonResourceAttributes+: { verb: verb } }
  },
  '#resourceAttributes':: d.obj(help='ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface'),
  resourceAttributes: {
    '#withGroup':: d.fn(help='Group is the API Group of the Resource.  "*" means all.', args=[d.arg(name='group', type=d.T.string)]),
    withGroup(group): { resourceAttributes+: { group: group } },
    '#withName':: d.fn(help='Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.', args=[d.arg(name='name', type=d.T.string)]),
    withName(name): { resourceAttributes+: { name: name } },
    '#withNamespace':: d.fn(help='Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview', args=[d.arg(name='namespace', type=d.T.string)]),
    withNamespace(namespace): { resourceAttributes+: { namespace: namespace } },
    '#withResource':: d.fn(help='Resource is one of the existing resource types.  "*" means all.', args=[d.arg(name='resource', type=d.T.string)]),
    withResource(resource): { resourceAttributes+: { resource: resource } },
    '#withSubresource':: d.fn(help='Subresource is one of the existing resource types.  "" means none.', args=[d.arg(name='subresource', type=d.T.string)]),
    withSubresource(subresource): { resourceAttributes+: { subresource: subresource } },
    '#withVerb':: d.fn(help='Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.', args=[d.arg(name='verb', type=d.T.string)]),
    withVerb(verb): { resourceAttributes+: { verb: verb } },
    '#withVersion':: d.fn(help='Version is the API Version of the Resource.  "*" means all.', args=[d.arg(name='version', type=d.T.string)]),
    withVersion(version): { resourceAttributes+: { version: version } }
  },
  '#withExtra':: d.fn(help='Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.', args=[d.arg(name='extra', type=d.T.object)]),
  withExtra(extra): { extra: extra },
  '#withExtraMixin':: d.fn(help='Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='extra', type=d.T.object)]),
  withExtraMixin(extra): { extra+: extra },
  '#withGroup':: d.fn(help="Groups is the groups you're testing for.", args=[d.arg(name='group', type=d.T.array)]),
  withGroup(group): { group: if std.isArray(v=group) then group else [group] },
  '#withGroupMixin':: d.fn(help="Groups is the groups you're testing for.\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='group', type=d.T.array)]),
  withGroupMixin(group): { group+: if std.isArray(v=group) then group else [group] },
  '#withUid':: d.fn(help='UID information about the requesting user.', args=[d.arg(name='uid', type=d.T.string)]),
  withUid(uid): { uid: uid },
  '#withUser':: d.fn(help="User is the user you're testing for. If you specify 'User' but not 'Group', then is it interpreted as 'What if User were not a member of any groups", args=[d.arg(name='user', type=d.T.string)]),
  withUser(user): { user: user },
  '#mixin': 'ignore',
  mixin: self
}