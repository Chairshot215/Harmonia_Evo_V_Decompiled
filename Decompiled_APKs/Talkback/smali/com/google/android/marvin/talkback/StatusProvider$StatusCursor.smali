.class Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;
.super Landroid/database/MatrixCursor;
.source "StatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/StatusProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusCursor"
.end annotation


# instance fields
.field private status:I

.field final synthetic this$0:Lcom/google/android/marvin/talkback/StatusProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/StatusProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;->this$0:Lcom/google/android/marvin/talkback/StatusProvider;

    .line 62
    invoke-static {}, Lcom/google/android/marvin/talkback/StatusProvider;->access$0()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;->status:I

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;->status:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 66
    iput p1, p0, Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;->status:I

    .line 67
    return-void
.end method
