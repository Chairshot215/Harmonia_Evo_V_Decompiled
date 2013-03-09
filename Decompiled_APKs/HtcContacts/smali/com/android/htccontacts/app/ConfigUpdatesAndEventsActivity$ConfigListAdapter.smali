.class Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConfigUpdatesAndEventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigListAdapter"
.end annotation


# static fields
.field private static final VIEW_COUNT:I = 0x3

.field private static final VIEW_TYPE_CHECK_BOX:I = 0x1

.field private static final VIEW_TYPE_DROP_DOWN:I = 0x0

.field private static final VIEW_TYPE_TEXT:I = 0x2


# instance fields
.field private mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;)V
    .locals 1
    .parameter
    .parameter "config"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    .line 111
    invoke-virtual {p1}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 112
    return-void
.end method


# virtual methods
.method public doOnItemClicked(II)V
    .locals 5
    .parameter "position"
    .parameter "data"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 238
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    if-nez v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 241
    :cond_0
    sget v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_DAY_SELECT:I

    if-ne v1, p1, :cond_5

    .line 242
    if-nez p2, :cond_2

    .line 243
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iput v2, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->eventQueryDays:I

    .line 277
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 245
    :cond_2
    if-ne v2, p2, :cond_3

    .line 246
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iput v4, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->eventQueryDays:I

    goto :goto_1

    .line 248
    :cond_3
    const/4 v1, 0x2

    if-ne v1, p2, :cond_4

    .line 249
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    const/4 v2, 0x7

    iput v2, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->eventQueryDays:I

    goto :goto_1

    .line 251
    :cond_4
    if-ne v4, p2, :cond_1

    .line 252
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    const/16 v2, 0x1e

    iput v2, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->eventQueryDays:I

    goto :goto_1

    .line 255
    :cond_5
    sget v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_NOTIFY:I

    if-ne v1, p1, :cond_7

    .line 256
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v1, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isEventEnabled:I

    if-ne v2, v1, :cond_6

    .line 257
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iput v3, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isEventEnabled:I

    goto :goto_1

    .line 260
    :cond_6
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iput v2, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isEventEnabled:I

    goto :goto_1

    .line 263
    :cond_7
    sget v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_UPDATE_NOTIFY:I

    if-ne v1, p1, :cond_9

    .line 264
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v1, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isUpdateEnabled:I

    if-ne v2, v1, :cond_8

    .line 265
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iput v3, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isUpdateEnabled:I

    goto :goto_1

    .line 268
    :cond_8
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iput v2, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isUpdateEnabled:I

    goto :goto_1

    .line 272
    :cond_9
    sget v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_SETTINGS:I

    if-ne v1, p1, :cond_1

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->access$300()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 143
    sget v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_DAY_SELECT:I

    if-ne v0, p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v1, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->eventQueryDays:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 153
    :goto_0
    return-object v0

    .line 146
    :cond_0
    sget v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_NOTIFY:I

    if-ne v0, p1, :cond_1

    .line 147
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v1, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isEventEnabled:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 149
    :cond_1
    sget v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_UPDATE_NOTIFY:I

    if-ne v0, p1, :cond_2

    .line 150
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v1, v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isUpdateEnabled:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 153
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 158
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 117
    sget v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_DAY_SELECT:I

    if-ne v1, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    sget v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_NOTIFY:I

    if-eq v1, p1, :cond_2

    sget v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_UPDATE_NOTIFY:I

    if-ne v1, p1, :cond_3

    .line 121
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :cond_3
    sget v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_SETTINGS:I

    if-ne v1, p1, :cond_0

    .line 124
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f0a003c

    const v8, 0x7f070002

    const v7, 0x2020010

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    sget v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_DAY_SELECT:I

    if-ne v3, p1, :cond_4

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, button:Landroid/widget/Button;
    if-nez p2, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030022

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 168
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 169
    .restart local v1       #button:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_0
    const v3, 0x7f070051

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 172
    .local v2, label:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 173
    const v3, 0x7f0a003a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :cond_1
    if-nez v1, :cond_2

    .line 176
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 178
    .restart local v1       #button:Landroid/widget/Button;
    :cond_2
    if-eqz v1, :cond_3

    .line 179
    iget-object v3, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v3, v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->eventQueryDays:I

    sparse-switch v3, :sswitch_data_0

    .line 193
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(I)V

    .line 233
    .end local v1           #button:Landroid/widget/Button;
    .end local v2           #label:Landroid/widget/TextView;
    :cond_3
    :goto_0
    return-object p2

    .line 181
    .restart local v1       #button:Landroid/widget/Button;
    .restart local v2       #label:Landroid/widget/TextView;
    :sswitch_0
    const v3, 0x7f0a003b

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 184
    :sswitch_1
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 187
    :sswitch_2
    const v3, 0x7f0a003d

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 190
    :sswitch_3
    const v3, 0x7f0a003e

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 198
    .end local v1           #button:Landroid/widget/Button;
    .end local v2           #label:Landroid/widget/TextView;
    :cond_4
    sget v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_NOTIFY:I

    if-eq v3, p1, :cond_5

    sget v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_UPDATE_NOTIFY:I

    if-ne v3, p1, :cond_a

    .line 199
    :cond_5
    if-nez p2, :cond_6

    .line 200
    iget-object v3, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090083

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 202
    :cond_6
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 203
    .restart local v2       #label:Landroid/widget/TextView;
    const v3, 0x202001f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 204
    .local v0, box:Landroid/widget/CheckBox;
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 205
    sget v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_NOTIFY:I

    if-ne v3, p1, :cond_8

    .line 206
    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iget-object v3, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v3, v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isEventEnabled:I

    if-ne v6, v3, :cond_7

    .line 209
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 212
    :cond_7
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 215
    :cond_8
    sget v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_UPDATE_NOTIFY:I

    if-ne v3, p1, :cond_3

    .line 216
    const v3, 0x7f0a0037

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v3, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v3, v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isUpdateEnabled:I

    if-ne v6, v3, :cond_9

    .line 219
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 222
    :cond_9
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 226
    .end local v0           #box:Landroid/widget/CheckBox;
    .end local v2           #label:Landroid/widget/TextView;
    :cond_a
    sget v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_SETTINGS:I

    if-ne v3, p1, :cond_3

    .line 227
    if-nez p2, :cond_b

    .line 228
    iget-object v3, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090007

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 230
    :cond_b
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    .restart local v2       #label:Landroid/widget/TextView;
    const v3, 0x7f0a0040

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x3

    return v0
.end method

.method public saveSettings()V
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "une_event"

    iget-object v2, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v2, v2, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isEventEnabled:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    const-string v1, "une_update"

    iget-object v2, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v2, v2, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isUpdateEnabled:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    const-string v1, "show_events_within_days"

    iget-object v2, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->mConfigValues:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    iget v2, v2, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->eventQueryDays:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-static {v1}, Lcom/android/htccontacts/util/SNUtils;->setEventDaysTimeSettingsDirty(Landroid/content/Context;)V

    .line 286
    return-void
.end method
