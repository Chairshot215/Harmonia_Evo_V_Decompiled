.class Lcom/m0narx/tweaks/misc$4;
.super Ljava/lang/Object;
.source "misc.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/misc;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/misc;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/misc;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v6, 0x1

    .line 122
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, PKey:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 124
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    if-ne v3, v4, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    :cond_0
    const-string v3, "pref_overscrollcolor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_overscroll_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    sput-boolean v6, Lcom/m0narx/tweaks/main;->is_need_phone_restart:Z

    .line 129
    sput-boolean v6, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 155
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #calls: Lcom/m0narx/tweaks/misc;->CheckButtonState()V
    invoke-static {v3}, Lcom/m0narx/tweaks/misc;->access$1(Lcom/m0narx/tweaks/misc;)V

    .line 156
    return v6

    .line 130
    :cond_2
    const-string v3, "pref_brighntess"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    iget-object v3, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_autobrightness_level"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    sput-boolean v6, Lcom/m0narx/tweaks/main;->is_need_phone_restart:Z

    .line 133
    sput-boolean v6, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    goto :goto_0

    .line 134
    :cond_3
    const-string v3, "sms_screenon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    iget-object v3, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_sms_screen_on"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 136
    :cond_4
    const-string v3, "pref_volumesteps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 137
    iget-object v3, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_volume_control"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    sput-boolean v6, Lcom/m0narx/tweaks/main;->is_need_phone_restart:Z

    .line 139
    sput-boolean v6, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    goto :goto_0

    .line 140
    :cond_5
    const-string v3, "pref_capacitive_backlight"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 141
    iget-object v3, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_buttons_brightness"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    sput-boolean v6, Lcom/m0narx/tweaks/main;->is_need_phone_restart:Z

    .line 143
    sput-boolean v6, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    goto :goto_0

    .line 144
    :cond_6
    const-string v3, "pref_hide_arrows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    :try_start_0
    const-string v3, "pkill com.htc.android.htcime"

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_htcime_noarrow"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 151
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
