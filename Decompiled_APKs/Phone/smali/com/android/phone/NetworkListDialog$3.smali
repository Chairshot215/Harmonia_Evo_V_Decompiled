.class Lcom/android/phone/NetworkListDialog$3;
.super Ljava/lang/Object;
.source "NetworkListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkListDialog;->displayNetworkSelectionSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkListDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/phone/NetworkListDialog$3;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/phone/NetworkListDialog$3;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-virtual {v0}, Lcom/android/phone/NetworkListDialog;->finish()V

    .line 555
    return-void
.end method
