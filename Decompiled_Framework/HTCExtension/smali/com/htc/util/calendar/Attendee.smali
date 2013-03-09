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

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/Attendee;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/Attendee;->mEmail:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/calendar/Attendee;->mStatus:I

    iput-object p1, p0, Lcom/htc/util/calendar/Attendee;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/util/calendar/Attendee;->mEmail:Ljava/lang/String;

    iput p3, p0, Lcom/htc/util/calendar/Attendee;->mStatus:I

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/calendar/Attendee;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/calendar/Attendee;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/htc/util/calendar/Attendee;->mStatus:I

    return v0
.end method
