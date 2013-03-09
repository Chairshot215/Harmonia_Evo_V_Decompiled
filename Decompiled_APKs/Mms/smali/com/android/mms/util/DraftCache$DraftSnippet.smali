.class public Lcom/android/mms/util/DraftCache$DraftSnippet;
.super Ljava/lang/Object;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DraftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DraftSnippet"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public date:J

.field public msg_id:J

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/util/DraftCache;

.field public thread_id:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/DraftCache;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/mms/util/DraftCache$DraftSnippet;->this$0:Lcom/android/mms/util/DraftCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
