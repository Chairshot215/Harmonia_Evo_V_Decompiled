.class Lcom/m0narx/tweaks/misc$3;
.super Ljava/lang/Object;
.source "misc.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


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
    iput-object p1, p0, Lcom/m0narx/tweaks/misc$3;->this$0:Lcom/m0narx/tweaks/misc;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, PKey:Ljava/lang/String;
    const-string v1, "apm_items"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/m0narx/tweaks/misc$3;->this$0:Lcom/m0narx/tweaks/misc;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/misc;->showDialog(I)V

    .line 115
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
