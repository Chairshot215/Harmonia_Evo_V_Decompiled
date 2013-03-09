.class Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
.super Ljava/lang/Exception;
.source "ComposeAreaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ComposeAreaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachmentFailureException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ComposeAreaController;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/ComposeAreaController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "error"

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;->this$0:Lcom/google/android/gm/ComposeAreaController;

    .line 1340
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1341
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gm/ComposeAreaController;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;->this$0:Lcom/google/android/gm/ComposeAreaController;

    .line 1343
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1344
    return-void
.end method
