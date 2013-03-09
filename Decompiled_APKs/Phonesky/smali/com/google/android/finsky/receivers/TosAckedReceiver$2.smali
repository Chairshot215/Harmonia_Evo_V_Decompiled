.class Lcom/google/android/finsky/receivers/TosAckedReceiver$2;
.super Ljava/lang/Object;
.source "TosAckedReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/TosAckedReceiver;->fetchToc(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/TosAckedReceiver;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$2;->this$0:Lcom/google/android/finsky/receivers/TosAckedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 71
    const-string v0, "Error fetching TOC: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method
