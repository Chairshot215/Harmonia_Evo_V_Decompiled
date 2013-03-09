.class public Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AbstractMessageCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/mms/util/AbstractCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/mms/msg/AbstractMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    .line 1265
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/mms/util/AbstractCache;-><init>(I)V

    .line 1266
    return-void
.end method

.method protected constructor <init>(Lcom/android/mms/ui/MessageListAdapter;I)V
    .locals 0
    .parameter
    .parameter "cacheSize"

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$AbstractMessageCache;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    .line 1269
    invoke-direct {p0, p2}, Lcom/google/android/mms/util/AbstractCache;-><init>(I)V

    .line 1270
    return-void
.end method
