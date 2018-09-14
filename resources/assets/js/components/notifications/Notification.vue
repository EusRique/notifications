<template>
    <a class="dropdown-item" href="#">
        {{comment.user.name}} comentou {{comment.title }}
    </a>

</template>

<script>
    export default {
        props: ['notification'],

        computed: {
            comment() {
                return this.notification.comment
            }
        }
    }
</script>