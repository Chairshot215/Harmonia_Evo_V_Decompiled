.class public Lcom/android/htccontacts/group/GroupDetailView$QueryException;
.super Ljava/lang/Exception;
.source "GroupDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupDetailView;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupDetailView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupDetailView$QueryException;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    .line 1218
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1219
    return-void
.end method
