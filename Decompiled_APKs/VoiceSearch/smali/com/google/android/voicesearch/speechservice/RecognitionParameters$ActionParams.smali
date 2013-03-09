.class public Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;
.super Ljava/lang/Object;
.source "RecognitionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionParams"
.end annotation


# instance fields
.field private mMultiSlotActionSelectedSlot:Ljava/lang/String;

.field private mMultiSlotActionType:I

.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V
    .locals 1
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;->mMultiSlotActionType:I

    .line 635
    return-void
.end method

.method private constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    const/4 v1, -0x1

    .line 637
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;->mMultiSlotActionType:I

    .line 638
    const-string v0, "android.speech.extras.ACTION_CONTEXT_ACTION_TYPE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;->mMultiSlotActionType:I

    .line 640
    const-string v0, "android.speech.extras.ACTION_CONTEXT_SELECTED_SLOT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;->mMultiSlotActionSelectedSlot:Ljava/lang/String;

    .line 642
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Landroid/content/Intent;Lcom/google/android/voicesearch/speechservice/RecognitionParameters$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 629
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Landroid/content/Intent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/speechservice/RecognitionParameters$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V

    return-void
.end method
