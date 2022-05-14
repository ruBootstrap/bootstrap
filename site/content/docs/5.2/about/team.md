---
layout: docs
title: Команда
description: Обзор команды основателей и основных участников Bootstrap.
group: about
---

Bootstrap поддерживается командой основателей и небольшой группой неоценимых основных участников при огромной поддержке и участии нашего сообщества.

{{< team.inline >}}
<div class="list-group mb-3">
  {{- range (index $.Site.Data "core-team") }}
    <a class="list-group-item list-group-item-action d-flex align-items-center" href="https://github.com/{{ .user }}">
      <img src="https://github.com/{{ .user }}.png" alt="@{{ .user }}" width="32" height="32" class="rounded me-2" loading="lazy">
      <span>
        <strong>{{ .name }}</strong> @{{ .user }}
      </span>
    </a>
  {{ end -}}
</div>
{{< /team.inline >}}

Примите участие в разработке Bootstrap [открыв issue]({{< param repo >}}/issues/new) или отправив pull request. Прочтите наши [правила участия]({{< param repo >}}/blob/v{{< param current_version >}}/.github/CONTRIBUTING.md) для получения информации о том, как мы развиваемся.
