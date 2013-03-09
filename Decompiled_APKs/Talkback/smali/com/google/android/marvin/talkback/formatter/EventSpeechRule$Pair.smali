.class Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;
.super Ljava/lang/Object;
.source "EventSpeechRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, this:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;,"Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair<TA;TB;>;"
    .local p1, first:Ljava/lang/Object;,"TA;"
    .local p2, second:Ljava/lang/Object;,"TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;->first:Ljava/lang/Object;

    .line 1016
    iput-object p2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;->second:Ljava/lang/Object;

    .line 1017
    return-void
.end method
