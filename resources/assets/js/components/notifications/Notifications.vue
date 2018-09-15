<template>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">
            Notificações ({{ notifications.length }}) <span class="caret"></span>
        </a>

        <ul class="dropdown-menu">
            <li>
                <notification
                    v-for="notification in notifications" 
                    :key="notification.id"
                    :notification="notification">
                </notification>

                <a class="dropdown-item" href="#">
                    Limpar Notificações
                </a>
            </li>
        </ul>

        <!--<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#" v-for="notification in notifications" :key="notification.id">
                {{ notification.data.comment.title }}
            </a>

            <a class="dropdown-item" href="#">
                Limpar Notificações
            </a>
        </div>-->
    </li>
</template>

<script>
    export default {
        created () {
            this.$store.dispatch('loadNotifications')
        },

        computed: {
            notifications () {
                return this.$store.state.notifications.items
            }
        },
    }
</script>