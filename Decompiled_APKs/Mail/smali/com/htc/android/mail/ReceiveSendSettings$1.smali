.class Lcom/htc/android/mail/ReceiveSendSettings$1;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReceiveSendSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReceiveSendSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReceiveSendSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$1;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 142
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings$1;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->showDialog(I)V

    .line 143
    return v1
.end method
