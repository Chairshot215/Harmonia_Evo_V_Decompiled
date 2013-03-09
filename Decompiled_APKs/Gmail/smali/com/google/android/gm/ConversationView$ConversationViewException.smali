.class public Lcom/google/android/gm/ConversationView$ConversationViewException;
.super Ljava/lang/RuntimeException;
.source "ConversationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConversationViewException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ConversationView;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/ConversationView;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/gm/ConversationView$ConversationViewException;->this$0:Lcom/google/android/gm/ConversationView;

    .line 192
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    return-void
.end method
