.class public Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;
.super Ljava/lang/Object;
.source "BlackListEntry.java"


# instance fields
.field private caseSensitive:Z

.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .parameter "caseSensitive"
    .parameter "word"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;->caseSensitive:Z

    .line 9
    iput-object p2, p0, Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;->word:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;->word:Ljava/lang/String;

    return-object v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;->caseSensitive:Z

    return v0
.end method
