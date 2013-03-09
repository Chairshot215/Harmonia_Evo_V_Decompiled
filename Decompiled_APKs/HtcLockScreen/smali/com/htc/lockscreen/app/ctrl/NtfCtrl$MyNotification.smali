.class public Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
.super Ljava/lang/Object;
.source "NtfCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/ctrl/NtfCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyNotification"
.end annotation


# static fields
.field public static final MISSED_CALL:I = 0x1

.field public static final MUSIC:I = 0x3e9

.field public static final SOCIAL_NETWORK:I = 0x5

.field public static final TYPE_MONITOR:I = 0x3e8

.field public static final TYPE_SPECIAL:I = 0x64

.field public static final UNREAD_MAIL:I = 0x4

.field public static final UNREAD_MESSAGE:I = 0x3

.field public static final VOICE_MAIL:I = 0x2


# instance fields
.field public mDescript:Ljava/lang/String;

.field public mIcon:I

.field public mId:I

.field public mPackageName:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field private mType:I

.field public mWhen:J

.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/app/ctrl/NtfCtrl;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 1
    .parameter
    .parameter "packageName"
    .parameter "id"
    .parameter "type"
    .parameter "title"
    .parameter "descript"
    .parameter "icon"
    .parameter "when"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mTitle:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mDescript:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mType:I

    .line 53
    iput-object p2, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mPackageName:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mId:I

    .line 55
    iput p4, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mType:I

    .line 56
    iput p7, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mIcon:I

    .line 57
    iput-object p5, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mTitle:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mDescript:Ljava/lang/String;

    .line 60
    iput-wide p8, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mWhen:J

    .line 61
    return-void
.end method

.method private getResName(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 128
    const v0, 0x7f020031

    if-ne p1, v0, :cond_0

    .line 129
    const-string v0, "notificiation_mail"

    .line 143
    :goto_0
    return-object v0

    .line 131
    :cond_0
    const v0, 0x7f020032

    if-ne p1, v0, :cond_1

    .line 132
    const-string v0, "notificiation_message"

    goto :goto_0

    .line 134
    :cond_1
    const v0, 0x7f020033

    if-ne p1, v0, :cond_2

    .line 135
    const-string v0, "notificiation_missedcall"

    goto :goto_0

    .line 137
    :cond_2
    const v0, 0x7f020034

    if-ne p1, v0, :cond_3

    .line 138
    const-string v0, "notificiation_socialnetwork"

    goto :goto_0

    .line 140
    :cond_3
    const v0, 0x7f020035

    if-ne p1, v0, :cond_4

    .line 141
    const-string v0, "notificiation_voicemail"

    goto :goto_0

    .line 143
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 93
    const-string v1, ""

    .line 94
    .local v1, dateStr:Ljava/lang/String;
    iget-wide v2, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mWhen:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 95
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mWhen:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 96
    .local v0, date:Ljava/util/Date;
    iget-wide v2, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mWhen:J

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    :goto_0
    return-object v1

    .line 96
    .restart local v0       #date:Ljava/util/Date;
    :cond_1
    const-string v2, "MM/dd/yyyy"

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDescript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mDescript:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"

    .prologue
    .line 112
    iget v2, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mIcon:I

    if-gtz v2, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 116
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/htc/lockscreen/app/ThemeHelper;->getThemeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 117
    .local v1, themeContext:Landroid/content/Context;
    iget v2, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mType:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 119
    iget v2, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mIcon:I

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->getResName(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mIcon:I

    invoke-static {v1, p1, v2, v3}, Lcom/htc/lockscreen/app/ThemeHelper;->getDrawable(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mIcon:I

    invoke-static {p1, v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mType:I

    return v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mWhen:J

    return-wide v0
.end method

.method public isSame(Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;)Z
    .locals 2
    .parameter "ntf"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p1, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mPackageName:Ljava/lang/String;

    iget v1, p1, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mId:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->isSame(Ljava/lang/String;I)Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSame(Ljava/lang/String;I)Z
    .locals 1
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mId:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
