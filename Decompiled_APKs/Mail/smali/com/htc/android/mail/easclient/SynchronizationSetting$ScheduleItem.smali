.class public Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;
.super Ljava/lang/Object;
.source "SynchronizationSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/SynchronizationSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScheduleItem"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field label:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/easclient/SynchronizationSetting;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/easclient/SynchronizationSetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "desc"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;->this$0:Lcom/htc/android/mail/easclient/SynchronizationSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;->label:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;->description:Ljava/lang/String;

    .line 139
    return-void
.end method
