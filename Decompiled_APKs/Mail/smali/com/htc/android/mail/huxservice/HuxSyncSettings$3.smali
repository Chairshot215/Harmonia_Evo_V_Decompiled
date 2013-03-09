.class Lcom/htc/android/mail/huxservice/HuxSyncSettings$3;
.super Ljava/lang/Object;
.source "HuxSyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->showDialog(I)V

    .line 748
    return-void
.end method
