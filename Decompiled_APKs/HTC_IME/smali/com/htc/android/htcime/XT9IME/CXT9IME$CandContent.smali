.class public Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;
.super Ljava/lang/Object;
.source "CXT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/CXT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CandContent"
.end annotation


# instance fields
.field mCompPhraseSpellIndex:I

.field mCompSpells:[I

.field mCompSpellsCount:I

.field mContent:Ljava/lang/String;

.field mIndex:I

.field mSpellType:I

.field mTone:I

.field mType:I

.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/CXT9IME;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4780
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->this$0:Lcom/htc/android/htcime/XT9IME/CXT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4781
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mType:I

    .line 4782
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mSpellType:I

    .line 4783
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mIndex:I

    .line 4784
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mContent:Ljava/lang/String;

    .line 4787
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mCompSpells:[I

    .line 4788
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mCompSpellsCount:I

    .line 4789
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;->mCompPhraseSpellIndex:I

    .line 4791
    return-void
.end method
