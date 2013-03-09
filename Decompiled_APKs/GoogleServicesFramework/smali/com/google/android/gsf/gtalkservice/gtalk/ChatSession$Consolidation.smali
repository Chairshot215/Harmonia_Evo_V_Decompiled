.class Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;
.super Ljava/lang/Object;
.source "ChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Consolidation"
.end annotation


# instance fields
.field mConsolidatedBody:Ljava/lang/String;

.field mConsolidatedRowUri:Landroid/net/Uri;

.field mConsolidationKey:J

.field mConsolidationRowTimeStamp:J

.field mPreviousGroupchatNickname:Ljava/lang/String;

.field mPreviousUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1013
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$Consolidation;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    return-void
.end method
