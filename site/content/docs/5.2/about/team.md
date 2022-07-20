---
layout: docs
title: Команда
description: Обзор команды основателей и основных контрибьюторов Bootstrap.
group: about
---

Bootstrap поддерживается командой основателей и небольшой группой бесценных основных участников при огромной поддержке и участии нашего сообщества.

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

Примите участие в разработке Bootstrap, [открыв вопрос]({{< param repo >}}/issues/new) или отправив pull request. Прочтите наше [руководство по содействию]({{< param repo >}}/blob/v{{< param current_version >}}/.github/CONTRIBUTING.md), чтобы узнать, как мы разрабатываем.
