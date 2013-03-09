.class public final Lcom/google/android/gm/provider/Gmail$DetachedConversationCursor;
.super Lcom/google/android/gm/provider/Gmail$ConversationCursor;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetachedConversationCursor"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 6
    .parameter "gmail"
    .parameter "account"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 3679
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;-><init>(Landroid/os/Handler;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V

    .line 3680
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3677
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail$DetachedConversationCursor;-><init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 3684
    return-void
.end method
