.class Lcom/m0narx/tweaks/systemui$4;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


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
    iput-object p1, p0, Lcom/m0narx/tweaks/systemui$4;->this$0:Lcom/m0narx/tweaks/systemui;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 184
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, PKey:Ljava/lang/String;
    const-string v1, "hrquick_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const-string v1, "hide_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui$4;->this$0:Lcom/m0narx/tweaks/systemui;

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/systemui;->showDialog(I)V

    .line 191
    :cond_0
    return v2
.end method
