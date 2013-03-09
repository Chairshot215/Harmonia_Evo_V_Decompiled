.class Lcom/m0narx/tweaks/StatusBarCaption$1;
.super Ljava/lang/Object;
.source "StatusBarCaption.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/StatusBarCaption;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/StatusBarCaption;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/StatusBarCaption;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/StatusBarCaption$1;->this$0:Lcom/m0narx/tweaks/StatusBarCaption;

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

    .line 33
    :cond_0
    const-string v2, "pref_statusbar_caption"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    iget-object v2, p0, Lcom/m0narx/tweaks/StatusBarCaption$1;->this$0:Lcom/m0narx/tweaks/StatusBarCaption;

    #getter for: Lcom/m0narx/tweaks/StatusBarCaption;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/StatusBarCaption;->access$0(Lcom/m0narx/tweaks/StatusBarCaption;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_custom_statusbartext"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    sput-boolean v5, Lcom/m0narx/tweaks/main;->is_need_systemui_restart:Z

    .line 36
    sput-boolean v5, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 44
    :cond_1
    :goto_0
    return v5

    .line 37
    :cond_2
    const-string v2, "extended_statusbartext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    iget-object v2, p0, Lcom/m0narx/tweaks/StatusBarCaption$1;->this$0:Lcom/m0narx/tweaks/StatusBarCaption;

    #getter for: Lcom/m0narx/tweaks/StatusBarCaption;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/StatusBarCaption;->access$0(Lcom/m0narx/tweaks/StatusBarCaption;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_extended_statusbartext"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 39
    :cond_3
    const-string v2, "extended_statusbartext_color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    iget-object v2, p0, Lcom/m0narx/tweaks/StatusBarCaption$1;->this$0:Lcom/m0narx/tweaks/StatusBarCaption;

    #getter for: Lcom/m0narx/tweaks/StatusBarCaption;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/StatusBarCaption;->access$0(Lcom/m0narx/tweaks/StatusBarCaption;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_extended_statusbartext_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 41
    :cond_4
    const-string v2, "extended_statusbartext_showicon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/m0narx/tweaks/StatusBarCaption$1;->this$0:Lcom/m0narx/tweaks/StatusBarCaption;

    #getter for: Lcom/m0narx/tweaks/StatusBarCaption;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/StatusBarCaption;->access$0(Lcom/m0narx/tweaks/StatusBarCaption;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_extended_statusbartext_showicon"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
