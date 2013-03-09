.class public Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;
.super Ljava/lang/Exception;
.source "GroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DataInvalidException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupEditActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    .line 1869
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1870
    return-void
.end method
