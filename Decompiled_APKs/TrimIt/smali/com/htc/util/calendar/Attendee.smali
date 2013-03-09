.class public Lcom/htc/util/calendar/Attendee;
.super Ljava/lang/Object;
.source "Attendee.java"


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "email"
    .parameter "status"

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/htc/util/calendar/Attendee;->mName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/util/calendar/Attendee;->mEmail:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/calendar/Attendee;->mStatus:I

    .line 12
    iput-object p1, p0, Lcom/htc/util/calendar/Attendee;->mName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/htc/util/calendar/Attendee;->mEmail:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/htc/util/calendar/Attendee;->mStatus:I

    .line 15
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/util/calendar/Attendee;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/util/calendar/Attendee;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/util/calendar/Attendee;->mStatus:I

    return v0
.end method
