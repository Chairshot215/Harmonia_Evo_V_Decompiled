.class public Lcom/android/htccontacts/model/DataKind;
.super Ljava/lang/Object;
.source "DataKind.java"


# static fields
.field public static final PSEUDO_COLUMN_PHONETIC_NAME:Ljava/lang/String; = "#phoneticName"

.field public static final PSEUDO_MIME_TYPE_DISPLAY_NAME:Ljava/lang/String; = "#displayName"

.field public static final PSEUDO_MIME_TYPE_PHONETIC_NAME:Ljava/lang/String; = "#phoneticName"


# instance fields
.field public actionAltHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

.field public actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

.field public actionBodySocial:Z

.field public actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

.field public dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field public dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

.field public defaultValues:Landroid/content/ContentValues;

.field public editable:Z

.field public final editorLayoutResourceId:I

.field public fieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountType$EditField;",
            ">;"
        }
    .end annotation
.end field

.field public iconAltDescriptionRes:I

.field public iconAltRes:I

.field public iconRes:I

.field public mimeType:Ljava/lang/String;

.field public resPackageName:Ljava/lang/String;

.field public titleRes:I

.field public typeColumn:Ljava/lang/String;

.field public typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation
.end field

.field public typeOverallMax:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/android/htccontacts/model/DataKind;->actionBodySocial:Z

    .line 96
    iput v0, p0, Lcom/android/htccontacts/model/DataKind;->editorLayoutResourceId:I

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 1
    .parameter "mimeType"
    .parameter "titleRes"
    .parameter "weight"
    .parameter "editable"
    .parameter "editorLayoutResourceId"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/model/DataKind;->actionBodySocial:Z

    .line 101
    iput-object p1, p0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 102
    iput p2, p0, Lcom/android/htccontacts/model/DataKind;->titleRes:I

    .line 103
    iput p3, p0, Lcom/android/htccontacts/model/DataKind;->weight:I

    .line 104
    iput-boolean p4, p0, Lcom/android/htccontacts/model/DataKind;->editable:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 106
    iput p5, p0, Lcom/android/htccontacts/model/DataKind;->editorLayoutResourceId:I

    .line 107
    return-void
.end method
