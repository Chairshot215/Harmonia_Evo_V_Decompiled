.class Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$UCWordComparator;
.super Ljava/lang/Object;
.source "XT9IME.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCWordComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;)V
    .locals 0
    .parameter

    .prologue
    .line 6503
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$UCWordComparator;->this$2:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Lcom/htc/android/htcime/XT9IME/XT9IME$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6503
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$UCWordComparator;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 6505
    iget-object v0, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->unCommonWord:Ljava/lang/String;

    iget-object v1, p2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->unCommonWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6503
    check-cast p1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    .end local p1
    check-cast p2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$UCWordComparator;->compare(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;)I

    move-result v0

    return v0
.end method
