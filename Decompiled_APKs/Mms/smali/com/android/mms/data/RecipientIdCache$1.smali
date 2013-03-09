.class final Lcom/android/mms/data/RecipientIdCache$1;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/RecipientIdCache;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->fill()V

    .line 30
    return-void
.end method
