.class Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;
.super Ljava/lang/Object;
.source "ConfigUpdatesAndEventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigValues"
.end annotation


# instance fields
.field public eventQueryDays:I

.field public isEventEnabled:I

.field public isUpdateEnabled:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isEventEnabled:I

    .line 81
    iput v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isUpdateEnabled:I

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->eventQueryDays:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;-><init>()V

    return-void
.end method
