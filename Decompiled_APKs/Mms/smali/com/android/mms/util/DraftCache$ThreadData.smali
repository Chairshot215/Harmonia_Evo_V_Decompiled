.class public Lcom/android/mms/util/DraftCache$ThreadData;
.super Ljava/lang/Object;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DraftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ThreadData"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field contact_id:J

.field final synthetic this$0:Lcom/android/mms/util/DraftCache;

.field thread_id:J


# direct methods
.method protected constructor <init>(Lcom/android/mms/util/DraftCache;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/mms/util/DraftCache$ThreadData;->this$0:Lcom/android/mms/util/DraftCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
