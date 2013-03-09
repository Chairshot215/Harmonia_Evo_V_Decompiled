.class Lcom/m0narx/tweaks/battery_settings$1;
.super Ljava/lang/Object;
.source "battery_settings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/battery_settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/battery_settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/battery_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    .line 29
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, PKey:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 31
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 32
    :cond_0
    const-string v2, "battery_text_style_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_battery_text_style"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    :cond_1
    :goto_0
    return v5

    .line 34
    :cond_2
    const-string v2, "show_miui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_style"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 36
    :cond_3
    const-string v2, "battery_automatically_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_auto_enabled"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 38
    :cond_4
    const-string v2, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 39
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_auto_color"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 40
    :cond_5
    const-string v2, "barheight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 41
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_height"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 42
    :cond_6
    const-string v2, "battery_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 43
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_static"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 44
    :cond_7
    const-string v2, "battery_color_auto_charging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 45
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_auto_charging"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 46
    :cond_8
    const-string v2, "battery_color_auto_regular"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 47
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_auto_regular"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 48
    :cond_9
    const-string v2, "battery_color_auto_medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 49
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_auto_medium"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 50
    :cond_a
    const-string v2, "battery_color_auto_low"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 51
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_auto_low"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 52
    :cond_b
    const-string v2, "batterybar_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 53
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 54
    :cond_c
    const-string v2, "batterybar_color_auto_charging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 55
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_color_auto_charging"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 56
    :cond_d
    const-string v2, "batterybar_color_auto_regular"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 57
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_color_auto_regular"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 58
    :cond_e
    const-string v2, "batterybar_color_auto_medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 59
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_color_auto_medium"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 60
    :cond_f
    const-string v2, "batterybar_color_auto_low"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_color_auto_low"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
