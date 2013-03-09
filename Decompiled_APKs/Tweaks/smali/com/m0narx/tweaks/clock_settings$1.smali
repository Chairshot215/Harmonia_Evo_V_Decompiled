.class Lcom/m0narx/tweaks/clock_settings$1;
.super Ljava/lang/Object;
.source "clock_settings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/clock_settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/clock_settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/clock_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/clock_settings$1;->this$0:Lcom/m0narx/tweaks/clock_settings;

    .line 24
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

    .line 27
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, PKey:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 29
    .local v1, bvar:Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 30
    :cond_0
    const-string v2, "pref_clock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    iget-object v2, p0, Lcom/m0narx/tweaks/clock_settings$1;->this$0:Lcom/m0narx/tweaks/clock_settings;

    #getter for: Lcom/m0narx/tweaks/clock_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/clock_settings;->access$0(Lcom/m0narx/tweaks/clock_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_clock_style"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    :cond_1
    :goto_0
    return v5

    .line 32
    :cond_2
    const-string v2, "clock_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    iget-object v2, p0, Lcom/m0narx/tweaks/clock_settings$1;->this$0:Lcom/m0narx/tweaks/clock_settings;

    #getter for: Lcom/m0narx/tweaks/clock_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/clock_settings;->access$0(Lcom/m0narx/tweaks/clock_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_clock_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 34
    :cond_3
    const-string v2, "clock_hide_ampm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    iget-object v2, p0, Lcom/m0narx/tweaks/clock_settings$1;->this$0:Lcom/m0narx/tweaks/clock_settings;

    #getter for: Lcom/m0narx/tweaks/clock_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/clock_settings;->access$0(Lcom/m0narx/tweaks/clock_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_clock_hide_ampm"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
