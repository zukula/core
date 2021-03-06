<h3>{gt text='List of users and their passwords :-P'}</h3>

{insert name="getstatusmsg"}

<a href="{modurl modname="ExampleDoctrine" type="user" func="edit"}">{gt text='New user'}</a>

<table class="z-datatable">
    <thead>
        <tr>
            <td>{gt text='Username'}</td>
            <td>{gt text='Password'}</td>
<!--            <td>{gt text='Categories'}</td>
            <td>{gt text='Meta data: Comment'}</td>
            <td>{gt text='Attributes: Field1'}</td>
            <td>{gt text='Attributes: Field2'}</td> -->
            <td>{gt text='Options'}</td>
        </tr>
    </thead>
    <tbody>
        {foreach from=$users item='u'}
            <tr class="{cycle values="z-odd,z-even"}">
                <td>{$u->getUsername()|safetext}</td>
                <td>{$u->getPassword()|safetext}</td>
                <td>
                    {*foreach from=$u.Categories item='c'}
                        {$c.Category.name|safetext}
                    {/foreach}
                </td>
                <td>{$u.__META__.dc_comment|default:''|safehtml}</td>
                <td>{$u.__ATTRIBUTES__.field1|default:''|safetext}</td>
                <td>{$u.__ATTRIBUTES__.field2|default:''|safetext*}</td>
                <td><a href="{modurl modname="ExampleDoctrine" type="user" func="edit" id=$u->getId()}">{gt text='Edit'}</a></td>
            </tr>
        {/foreach}
    </tbody>
</table>
