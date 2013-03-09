.class public Lcom/google/wireless/gdata2/calendar/data/Reminder;
.super Ljava/lang/Object;
.source "Reminder.java"


# static fields
.field public static final METHOD_ALERT:B = 0x3t

.field public static final METHOD_DEFAULT:B = 0x0t

.field public static final METHOD_EMAIL:B = 0x1t

.field public static final METHOD_SMS:B = 0x2t

.field public static final MINUTES_DEFAULT:I = -0x1


# instance fields
.field private method:B

.field private minutes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    .line 36
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    .line 42
    return-void
.end method


# virtual methods
.method public getMethod()B
    .locals 1

    .prologue
    .line 49
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    return v0
.end method

.method public setMethod(B)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    .line 58
    return-void
.end method

.method public setMinutes(I)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput p1, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->toString(Ljava/lang/StringBuffer;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMINDER MINUTES: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMINDER METHOD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    return-void
.end method
