.class public Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;
.super Ljava/lang/Object;
.source "ScheduledDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ScheduledDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dialogAttr"
.end annotation


# instance fields
.field public bodyStr:Ljava/lang/String;

.field public cancelable:Z

.field public hasHyperlink:Z

.field public listenerKey:I

.field public negativeStr:Ljava/lang/String;

.field public positiveStr:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public title_icon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean v0, p0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->hasHyperlink:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->cancelable:Z

    .line 135
    invoke-static {}, Lcom/android/mms/util/ScheduledDialogActivity;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->listenerKey:I

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->title_icon:I

    return-void
.end method
