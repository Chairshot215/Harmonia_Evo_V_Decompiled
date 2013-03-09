.class Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDateTime"
.end annotation


# instance fields
.field mDateFormat:Ljava/lang/String;

.field mTimeFormat:Ljava/text/DateFormat;

.field syncDate:Ljava/util/Calendar;

.field final synthetic this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;


# direct methods
.method public constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/Date;)V
    .locals 1
    .parameter
    .parameter "date"

    .prologue
    const/4 v0, 0x0

    .line 1048
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->syncDate:Ljava/util/Calendar;

    .line 1044
    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->mDateFormat:Ljava/lang/String;

    .line 1045
    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->mTimeFormat:Ljava/text/DateFormat;

    .line 1049
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->syncDate:Ljava/util/Calendar;

    .line 1050
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->syncDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1051
    return-void
.end method


# virtual methods
.method public getTimeDate()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-virtual {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->mDateFormat:Ljava/lang/String;

    .line 1057
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->mDateFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    const-string v1, "MediaAutoUploadSetting"

    const-string v2, "MyDateTime format empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v1, "EE, MMM dd, yyyy"

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->mDateFormat:Ljava/lang/String;

    .line 1061
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-virtual {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->mDateFormat:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1065
    :cond_0
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->mTimeFormat:Ljava/text/DateFormat;

    .line 1066
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->mTimeFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MyDateTime;->syncDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, formattedTime:Ljava/lang/CharSequence;
    return-object v0
.end method
