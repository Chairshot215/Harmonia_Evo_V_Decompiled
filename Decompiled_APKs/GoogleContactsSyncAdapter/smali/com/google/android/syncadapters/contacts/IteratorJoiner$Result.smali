.class public Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
.super Ljava/lang/Object;
.source "IteratorJoiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/contacts/IteratorJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;


# direct methods
.method public constructor <init>(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>.Result;"
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->left:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->right:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>.Result;"
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>.Result;"
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->right:Ljava/lang/Object;

    return-object v0
.end method
