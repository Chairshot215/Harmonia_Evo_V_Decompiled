.class Lcom/m0narx/tweaks/systemui$3;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/systemui;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/systemui;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/systemui;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 134
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, PKey:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 136
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    if-ne v4, v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 138
    :cond_0
    const-string v4, "super_quick_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_auto_quick_settings"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #calls: Lcom/m0narx/tweaks/systemui;->CheckButtonState()V
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$1(Lcom/m0narx/tweaks/systemui;)V

    move v2, v3

    .line 176
    :goto_1
    return v2

    .line 140
    :cond_2
    const-string v4, "wifi_config"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_wifi_config"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_systemui_restart:Z

    .line 143
    sput-boolean v3, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    goto :goto_0

    .line 144
    :cond_3
    const-string v4, "pref_statusbar_transparency"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 145
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_statusbar_transparency"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 146
    :cond_4
    const-string v4, "hide_date"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_statusbar_hide_date"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 148
    :cond_5
    const-string v4, "h_icon_replace"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 149
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_statusbar_h_icon"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 150
    :cond_6
    const-string v4, "statusbar_bgcolor_pref"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 151
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_statusbar_bgcolor"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 152
    :cond_7
    const-string v4, "recentapps_style"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 153
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_recentapps_style"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 154
    :cond_8
    const-string v4, "recentapps_bgcolor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 155
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_recentapps_bgcolor"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 156
    :cond_9
    const-string v4, "recentapps_hideicons"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 157
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_recentapps_hideicons"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 158
    :cond_a
    const-string v4, "recentapps_custombg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 159
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_b

    .line 160
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_recentapps_customimage"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 162
    :cond_b
    iget-object v3, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #calls: Lcom/m0narx/tweaks/systemui;->InstallBg(I)V
    invoke-static {v3, v2}, Lcom/m0narx/tweaks/systemui;->access$2(Lcom/m0narx/tweaks/systemui;I)V

    goto/16 :goto_1

    .line 165
    :cond_c
    const-string v4, "statusbar_custombg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_d

    .line 167
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_statusbar_customimage"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 169
    :cond_d
    iget-object v4, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #calls: Lcom/m0narx/tweaks/systemui;->InstallBg(I)V
    invoke-static {v4, v3}, Lcom/m0narx/tweaks/systemui;->access$2(Lcom/m0narx/tweaks/systemui;I)V

    goto/16 :goto_1

    .line 172
    :cond_e
    const-string v2, "cm_brightness_control"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$3;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_cm_brightness_control"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
