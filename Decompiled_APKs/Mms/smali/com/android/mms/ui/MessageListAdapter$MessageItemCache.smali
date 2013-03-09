.class Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageItemCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/mms/util/AbstractCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/mms/ui/MessageItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field private static final serialVersionUID:J = 0x3316526d7851d370L


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    .line 116
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/google/android/mms/util/AbstractCache;-><init>(I)V

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageListAdapter;Lcom/android/mms/ui/MessageListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    return-void
.end method
