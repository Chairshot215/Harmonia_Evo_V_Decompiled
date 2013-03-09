.class Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;
.super Ljava/lang/Object;
.source "SearchFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/SearchFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewTag"
.end annotation


# instance fields
.field mIschecked:Z

.field mPrefPosition:I

.field mTag:I

.field mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/htc/android/mail/SearchFilterAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V
    .locals 0
    .parameter
    .parameter "text"
    .parameter "tag"
    .parameter "ischecked"
    .parameter "prefPosition"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->this$0:Lcom/htc/android/mail/SearchFilterAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mText:Ljava/lang/CharSequence;

    .line 184
    iput p3, p0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mTag:I

    .line 185
    iput-boolean p4, p0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mIschecked:Z

    .line 186
    iput p5, p0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mPrefPosition:I

    .line 187
    return-void
.end method
