.class public Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/calendar/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attendee"
.end annotation


# static fields
.field public static final STATUS_ACCEPT:I = 0x3

.field public static final STATUS_DECLINE:I = 0x4

.field public static final STATUS_NOT_RESPONDED:I = 0x5

.field public static final STATUS_TENTATIVE:I = 0x2

.field public static final STATUS_UNKNOW:I = 0x0

.field public static final TYPE_OPTIONAL:I = 0x2

.field public static final TYPE_REQUIRED:I = 0x1

.field public static final TYPE_RESOURCE:I = 0x3


# instance fields
.field public EMail:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public Status:I

.field public Type:I

.field public isOrganizer:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 576
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 577
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "email"

    .prologue
    .line 578
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Name:Ljava/lang/String;

    .line 580
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->EMail:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "name"
    .parameter "email"
    .parameter "status"
    .parameter "type"

    .prologue
    .line 582
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Name:Ljava/lang/String;

    .line 584
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->EMail:Ljava/lang/String;

    .line 585
    iput p3, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Status:I

    .line 586
    iput p4, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Type:I

    .line 587
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 590
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "Attendee@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    const-string v1, "Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    const-string v1, ",EMail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->EMail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    const-string v1, ",Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 594
    const-string v1, ",Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 595
    const-string v1, ",isOrganizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->isOrganizer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
