.class Lcom/htc/android/mail/database/AbstractMailCursor$1;
.super Landroid/database/DataSetObserver;
.source "AbstractMailCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/database/AbstractMailCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/database/AbstractMailCursor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/database/AbstractMailCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/android/mail/database/AbstractMailCursor$1;->this$0:Lcom/htc/android/mail/database/AbstractMailCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "AbstractMailCursor"

    const-string v1, "DateSet onChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor$1;->this$0:Lcom/htc/android/mail/database/AbstractMailCursor;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 51
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor$1;->this$0:Lcom/htc/android/mail/database/AbstractMailCursor;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 55
    return-void
.end method
