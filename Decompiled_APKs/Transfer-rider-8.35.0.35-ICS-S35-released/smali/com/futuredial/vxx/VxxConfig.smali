.class public Lcom/futuredial/vxx/VxxConfig;
.super Ljava/lang/Object;
.source "VxxConfig.java"


# static fields
.field public static final ATTRIBUTE_NODE:S = 0x2s

.field public static final ELEMENT_NODE:S = 0x1s


# instance fields
.field private bEscSingleField:Z

.field public bQPBWBlankVCal:Z

.field public bQPBWBlankVCard:Z

.field public bSmsDateIsUTC:Z

.field public bSmsHas_X_NOK_DT:Z

.field public hmVCalCategoryToID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public hmVCalTagToID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public hmVCardTagToID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public hmVCardTagToParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hmVMsgTagToID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iEncodeEsc:I

.field public sCharsetFFWEVCard:Ljava/lang/String;

.field public sDefCharsetVCal:Ljava/lang/String;

.field public sDefCharsetVCard:Ljava/lang/String;

.field private sEscVCal:Ljava/lang/String;

.field private sEscVCard:Ljava/lang/String;

.field private sEscVMsg:Ljava/lang/String;

.field private sParserVCal:Ljava/lang/String;

.field private sParserVCard:Ljava/lang/String;

.field private sParserVMsg:Ljava/lang/String;

.field private sPolicyID:Ljava/lang/String;

.field public sQPCharsetVCal:Ljava/lang/String;

.field public sQPCharsetVCard:Ljava/lang/String;

.field private sSpecName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "default"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sPolicyID:Ljava/lang/String;

    .line 29
    const-string v0, "default"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sSpecName:Ljava/lang/String;

    .line 30
    const-string v0, "default"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sParserVCard:Ljava/lang/String;

    .line 31
    const-string v0, "default"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sParserVCal:Ljava/lang/String;

    .line 32
    const-string v0, "default"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sParserVMsg:Ljava/lang/String;

    .line 34
    const-string v0, ";\\"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sEscVCard:Ljava/lang/String;

    .line 35
    const-string v0, ";\\"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sEscVCal:Ljava/lang/String;

    .line 36
    const-string v0, ";\\"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sEscVMsg:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/vxx/VxxConfig;->iEncodeEsc:I

    .line 38
    iput-boolean v1, p0, Lcom/futuredial/vxx/VxxConfig;->bEscSingleField:Z

    .line 39
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sQPCharsetVCard:Ljava/lang/String;

    .line 40
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sQPCharsetVCal:Ljava/lang/String;

    .line 41
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCard:Ljava/lang/String;

    .line 42
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCal:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->sCharsetFFWEVCard:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/futuredial/vxx/VxxConfig;->bQPBWBlankVCard:Z

    .line 46
    iput-boolean v1, p0, Lcom/futuredial/vxx/VxxConfig;->bQPBWBlankVCal:Z

    .line 48
    iput-boolean v1, p0, Lcom/futuredial/vxx/VxxConfig;->bSmsHas_X_NOK_DT:Z

    .line 49
    iput-boolean v1, p0, Lcom/futuredial/vxx/VxxConfig;->bSmsDateIsUTC:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    .line 53
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    .line 55
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    .line 58
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    .line 60
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    .line 63
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 64
    return-void
.end method

.method private InitMapTable(I)V
    .locals 7
    .parameter "contentType"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 637
    if-eqz p1, :cond_0

    if-ne v5, p1, :cond_1

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 641
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    const-string v1, "ADR"

    const-string v2, "DOM;INTL;PARCEL;HOME;WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    const-string v1, "LABEL"

    const-string v2, "DOM;INTL;PARCEL;HOME;WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    const-string v1, "TEL"

    const-string v2, "MSG;VOICE;FAX;CELL;VIDEO;PAGER;BBS;MODEM;CAR;ISDN;PCS;HOME;WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    const-string v1, "EMAIL"

    const-string v2, "INTERNET;X400;HOME;WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    const-string v1, "URL"

    const-string v2, "HOME;WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    const-string v1, "X-SIP"

    const-string v2, "SWIS;POC;VOIP;HOME;WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    const-string v1, "X-INDEX"

    const-string v2, "SIM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/futuredial/vxx/VxxConfig;->InitMapTableVCARD(Ljava/lang/String;)V

    .line 652
    :cond_1
    if-eq v4, p1, :cond_2

    const/4 v0, 0x6

    if-ne v0, p1, :cond_3

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 656
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    const-string v1, "MISCELLANEOUS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    const-string v1, "APPOINTMENT"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    const-string v1, "MEETING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    const-string v1, "PHONE CALL"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    const-string v1, "EVENT"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    const-string v1, "ANNIVERSARY"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    const-string v1, "BIRTHDAY"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    const-string v1, "TODO"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    const-string v1, "TASK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/futuredial/vxx/VxxConfig;->InitMapTableVCAL(Ljava/lang/String;)V

    .line 669
    :cond_3
    if-ne v5, p1, :cond_4

    .line 671
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/futuredial/vxx/VxxConfig;->InitMapTableVSMS(Ljava/lang/String;)V

    .line 674
    :cond_4
    return-void
.end method

.method private InitMapTableVCAL(Ljava/lang/String;)V
    .locals 8
    .parameter "strPolicy"

    .prologue
    const/16 v7, 0xc9

    const/16 v6, 0x69

    const/16 v5, 0x66

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 800
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 804
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "TZ"

    const/16 v2, 0xda

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "DAYLIGHT"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "BEGIN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "X-EPOCAGENDAENTRYTYPE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "CATEGORIES"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "DTSTART"

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "DTEND"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "DUE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "COMPLETED"

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "STATUS"

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "DESCRIPTION"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "SUMMARY"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "LOCATION"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "CLASS"

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "SEQUENCE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "PRIORITY"

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "AALARM"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "AALARM;TIME"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "DALARM"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "DALARM;TIME"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;TYPE"

    const/16 v2, 0xd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;STARTTIME"

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;ENDTIME"

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;DAYOFMONTH"

    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;MONTHOFYEAR"

    const/16 v2, 0xd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;DAYOFYEAR"

    const/16 v2, 0xdb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;WEEKFLAG"

    const/16 v2, 0xdf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;WEEKMASK"

    const/16 v2, 0xd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;INTERVAL"

    const/16 v2, 0xd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;INSTANCE"

    const/16 v2, 0xd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v1, "RRULE;OCCURRENCES"

    const/16 v2, 0xd0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    :cond_0
    return-void
.end method

.method private InitMapTableVCARD(Ljava/lang/String;)V
    .locals 8
    .parameter "strPolicy"

    .prologue
    const/16 v7, 0x6a

    const/16 v6, 0x68

    const/16 v5, 0xfb4

    const/16 v4, 0xfa5

    const/16 v3, 0x6c

    .line 678
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 682
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "N;FN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "N;LN"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "N;MIDDLENAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "N;TITLE"

    const/16 v2, 0xfa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "N;SUFFIX"

    const/16 v2, 0xfab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "FN"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TITLE"

    const/16 v2, 0xfaf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ORG;FIRM"

    const/16 v2, 0xfc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ORG;DEPARTMENT"

    const/16 v2, 0xfa2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "NOTE"

    const/16 v2, 0xbba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "BDAY"

    const/16 v2, 0xfa3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-ASSISTANT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-MOT-ASSISTANT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "AGENT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-ASSISTANT-TEL"

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-SPOUSE"

    const/16 v2, 0xfb1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-MOT-SPOUSE"

    const/16 v2, 0xfb1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-CHILDREN"

    const/16 v2, 0xfb2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-MOT-CHILD"

    const/16 v2, 0xfb2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-ANNIVERSARY"

    const/16 v2, 0xfb3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ANNIVERSARY"

    const/16 v2, 0xfb3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;CAR"

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VOICE;CAR"

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;MSG"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;MSG;VOICE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;ISDN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;HOME"

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;WORK"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VOICE"

    const/16 v2, 0x6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VOICE;HOME"

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VOICE;WORK"

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VOICE;CELL"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VOICE;PAGER"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VOICE;VOICE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VOICE;FAX"

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VIDEO"

    const/16 v2, 0x7d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VIDEO;HOME"

    const/16 v2, 0x7e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;VIDEO;WORK"

    const/16 v2, 0x7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;CELL"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;CELL;HOME"

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;CELL;WORK"

    const/16 v2, 0x7c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;FAX"

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;FAX;HOME"

    const/16 v2, 0x6f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;FAX;WORK"

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;PAGER"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;PAGER;HOME"

    const/16 v2, 0x6b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "TEL;PAGER;WORK"

    const/16 v2, 0x83

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "EMAIL"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "EMAIL;HOME"

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "EMAIL;WORK"

    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "EMAIL;INTERNET"

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "EMAIL;INTERNET;HOME"

    const/16 v2, 0x3ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "EMAIL;INTERNET;WORK"

    const/16 v2, 0x3ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "URL"

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "URL;HOME"

    const/16 v2, 0x5dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "URL;WORK"

    const/16 v2, 0x5de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR"

    const/16 v2, 0x13ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;POST"

    const/16 v2, 0x7ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;EXTENDED"

    const/16 v2, 0x7ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;STREET"

    const/16 v2, 0x7f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;LOCALITY"

    const/16 v2, 0x7f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;REGION"

    const/16 v2, 0x7f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;POSTAL"

    const/16 v2, 0x7f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;COUNTRY"

    const/16 v2, 0x7f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "LABEL;HOME"

    const/16 v2, 0xfa7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;HOME"

    const/16 v2, 0x13ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;HOME;POST"

    const/16 v2, 0x7e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;HOME;EXTENDED"

    const/16 v2, 0x7e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;HOME;STREET"

    const/16 v2, 0x7d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;HOME;LOCALITY"

    const/16 v2, 0x7d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;HOME;REGION"

    const/16 v2, 0x7d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;HOME;POSTAL"

    const/16 v2, 0x7d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;HOME;COUNTRY"

    const/16 v2, 0x7d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "LABEL;WORK"

    const/16 v2, 0xfa6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;WORK"

    const/16 v2, 0x13ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;WORK;POST"

    const/16 v2, 0x7e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;WORK;EXTENDED"

    const/16 v2, 0x7e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;WORK;STREET"

    const/16 v2, 0x7da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;WORK;LOCALITY"

    const/16 v2, 0x7dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;WORK;REGION"

    const/16 v2, 0x7dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;WORK;POSTAL"

    const/16 v2, 0x7de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "ADR;WORK;COUNTRY"

    const/16 v2, 0x7e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-SIP"

    const/16 v2, 0x803

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-SIP;SWIS"

    const/16 v2, 0x804

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-SIP;POC"

    const/16 v2, 0x7e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-SIP;VOIP"

    const/16 v2, 0x802

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-SIP;VOIP;HOME"

    const/16 v2, 0x7ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-SIP;VOIP;WORK"

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-EPOCSECONDNAME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-NICKNAME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-MOT-NICKNAME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "NICKNAME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-MOT-MANAGER"

    const/16 v2, 0xfb5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "PHOTO"

    const/16 v2, 0x13ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "CATEGORIES"

    const/16 v2, 0xbca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-IMPP"

    const/16 v2, 0xfd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-AIM"

    const/16 v2, 0xfb7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-MSN"

    const/16 v2, 0xfb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-YAHOO"

    const/16 v2, 0xfb9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-SKYPE-USERNAME"

    const/16 v2, 0xfba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-QQ"

    const/16 v2, 0xfbb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-GOOGLE-TALK"

    const/16 v2, 0xfbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-ICQ"

    const/16 v2, 0xfbd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-JABBER"

    const/16 v2, 0xfbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "FDINCORRECTFIELD"

    const/16 v2, 0x232d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-INDEX;SIM"

    const/16 v2, 0x232e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-NETMEETING"

    const/16 v2, 0xfd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-ANDROID-CUSTOM"

    const/16 v2, 0xfd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-PHONETIC-FIRST-NAME"

    const/16 v2, 0xfd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-PHONETIC-MIDDLE-NAME"

    const/16 v2, 0xfd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    const-string v1, "X-PHONETIC-LAST-NAME"

    const/16 v2, 0xfd6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_0
    return-void
.end method

.method private InitMapTableVSMS(Ljava/lang/String;)V
    .locals 4
    .parameter "strPolicy"

    .prologue
    const/4 v3, 0x5

    .line 841
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 845
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    const-string v1, "X-IRMC-STATUS"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    const-string v1, "X-IRMC-BOX"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    const-string v1, "TELNO"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    const-string v1, "X-NOK-DT"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    const-string v1, "DATE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    const-string v1, "SHOWNAME"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v0, p0, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    const-string v1, "VMSGCONTENT"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_0
    return-void
.end method


# virtual methods
.method public LoadConfig(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 6
    .parameter "theApp"
    .parameter "contentType"
    .parameter "sPolicy"

    .prologue
    const/4 v4, 0x1

    .line 106
    if-nez p2, :cond_1

    .line 108
    invoke-static {p1, p3}, Lcom/futuredial/serializer/ConfigReader;->GetVCardSpec(Landroid/content/Context;Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v2

    .line 109
    .local v2, vcardpolicy:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/vxx/VxxConfig;->sEscVCard:Ljava/lang/String;

    .line 112
    iget-object v5, p0, Lcom/futuredial/vxx/VxxConfig;->sEscVCard:Ljava/lang/String;

    sput-object v5, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    .line 113
    invoke-virtual {v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscEncode()I

    move-result v5

    iput v5, p0, Lcom/futuredial/vxx/VxxConfig;->iEncodeEsc:I

    .line 114
    invoke-virtual {v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscSinglefield()Z

    move-result v5

    iput-boolean v5, p0, Lcom/futuredial/vxx/VxxConfig;->bEscSingleField:Z

    .line 115
    iget-boolean v5, p0, Lcom/futuredial/vxx/VxxConfig;->bEscSingleField:Z

    sput-boolean v5, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mbEscSoloProperty:Z

    .line 116
    invoke-virtual {v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/vxx/VxxConfig;->sQPCharsetVCard:Ljava/lang/String;

    .line 117
    invoke-virtual {v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCard:Ljava/lang/String;

    .line 118
    invoke-virtual {v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQpBeginWithBlank()Z

    move-result v5

    iput-boolean v5, p0, Lcom/futuredial/vxx/VxxConfig;->bQPBWBlankVCard:Z

    .line 120
    invoke-virtual {v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, policyName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "spec_8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    const-string v5, "UTF-8"

    iput-object v5, p0, Lcom/futuredial/vxx/VxxConfig;->sCharsetFFWEVCard:Ljava/lang/String;

    .line 154
    .end local v0           #policyName:Ljava/lang/String;
    .end local v2           #vcardpolicy:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/futuredial/vxx/VxxConfig;->InitMapTable(I)V

    .line 157
    :goto_1
    return v4

    .line 127
    :cond_1
    if-eq p2, v4, :cond_2

    const/4 v5, 0x6

    if-ne p2, v5, :cond_3

    .line 129
    :cond_2
    invoke-static {p1, p3}, Lcom/futuredial/serializer/ConfigReader;->GetVCalendarSpec(Landroid/content/Context;Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v1

    .line 130
    .local v1, vcalpolicy:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/vxx/VxxConfig;->sEscVCal:Ljava/lang/String;

    .line 133
    iget-object v5, p0, Lcom/futuredial/vxx/VxxConfig;->sEscVCal:Ljava/lang/String;

    sput-object v5, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->msEscSet:Ljava/lang/String;

    .line 134
    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/vxx/VxxConfig;->sQPCharsetVCal:Ljava/lang/String;

    .line 135
    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCal:Ljava/lang/String;

    .line 136
    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQpBeginWithBlank()Z

    move-result v5

    iput-boolean v5, p0, Lcom/futuredial/vxx/VxxConfig;->bQPBWBlankVCal:Z

    goto :goto_0

    .line 139
    .end local v1           #vcalpolicy:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    :cond_3
    const/4 v5, 0x2

    if-ne p2, v5, :cond_4

    .line 141
    invoke-static {p1, p3}, Lcom/futuredial/serializer/ConfigReader;->GetVMessageSpec(Landroid/content/Context;Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v3

    .line 142
    .local v3, vmsgpolicy:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {v3}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getHasXNokDt()Z

    move-result v5

    iput-boolean v5, p0, Lcom/futuredial/vxx/VxxConfig;->bSmsHas_X_NOK_DT:Z

    .line 145
    invoke-virtual {v3}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getDateIsUtc()Z

    move-result v5

    iput-boolean v5, p0, Lcom/futuredial/vxx/VxxConfig;->bSmsDateIsUTC:Z

    goto :goto_0

    .line 150
    .end local v3           #vmsgpolicy:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method
