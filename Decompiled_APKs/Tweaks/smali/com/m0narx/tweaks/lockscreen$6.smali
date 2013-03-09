.class Lcom/m0narx/tweaks/lockscreen$6;
.super Ljava/lang/Object;
.source "lockscreen.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/lockscreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/lockscreen;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/lockscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/lockscreen$6;->this$0:Lcom/m0narx/tweaks/lockscreen;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, PKey:Ljava/lang/String;
    const-string v1, "lockscreen_shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen$6;->this$0:Lcom/m0narx/tweaks/lockscreen;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/lockscreen;->showDialog(I)V

    .line 172
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_1
    const-string v1, "lockscreen_hide_datetime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen$6;->this$0:Lcom/m0narx/tweaks/lockscreen;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/lockscreen;->showDialog(I)V

    goto :goto_0
.end method
