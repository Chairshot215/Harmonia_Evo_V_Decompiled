.class public Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
.super Ljava/lang/Object;
.source "BaseActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/BaseActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PostCommandConversationState"
.end annotation


# instance fields
.field public final mConversationInfo:Lcom/google/android/gm/ConversationInfo;

.field final synthetic this$0:Lcom/google/android/gm/BaseActivityController;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/BaseActivityController;Lcom/google/android/gm/ConversationInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput-object p2, p0, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 1085
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/BaseActivityController;->updateConversationState(Lcom/google/android/gm/ConversationInfo;)V

    .line 1092
    return-void
.end method
