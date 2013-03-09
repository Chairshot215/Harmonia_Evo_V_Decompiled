.class Lcom/android/settings/ApnPreference$1;
.super Ljava/lang/Object;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/ApnPreference$1;->this$0:Lcom/android/settings/ApnPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/settings/ApnPreference$1;->this$0:Lcom/android/settings/ApnPreference;

    invoke-virtual {v1}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Lcom/android/settings/ApnSettings;

    if-eqz v1, :cond_1

    .line 61
    check-cast v0, Lcom/android/settings/ApnSettings;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->resetTextViewsFocused()V

    .line 66
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 62
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    instance-of v1, v0, Lcom/android/settings/CdmaApnSettings;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Lcom/android/settings/CdmaApnSettings;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/settings/CdmaApnSettings;->resetTextViewsFocused()V

    goto :goto_0
.end method
