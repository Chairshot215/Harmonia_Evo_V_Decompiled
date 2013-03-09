.class public Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CheckBoxContactPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CheckBoxContactPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/CheckBoxContactPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 951
    invoke-virtual {p1}, Lcom/android/htccontacts/CheckBoxContactPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 952
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 953
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 969
    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/CheckBoxContactPicker;

    .line 971
    .local v0, activity:Lcom/android/htccontacts/CheckBoxContactPicker;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 973
    if-eqz p3, :cond_1

    .line 980
    :try_start_0
    const-string v2, "_id"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mIDIdx:I

    .line 981
    const-string v2, "name"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mNameIdx:I

    .line 982
    const-string v2, "photo"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mPhotoPathIdx:I

    .line 983
    iget-boolean v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mbShowSimContacts:Z

    if-eqz v2, :cond_0

    .line 984
    const-string v2, "person"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mPersonIdx:I

    .line 985
    const-string v2, "recordNumber"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRecordNumberIdx:I

    .line 986
    const-string v2, "type"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    .line 988
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/CheckBoxContactPicker;->setAdapter(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :cond_1
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v1

    .line 990
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "CheckBoxContactPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete - Database column not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 998
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    if-eqz p3, :cond_1

    goto :goto_0
.end method
