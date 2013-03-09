.class final Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;
.super Ljava/lang/Object;
.source "HtcLegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcLegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DateObj"
.end annotation


# instance fields
.field day:I

.field month:I

.field final synthetic this$0:Lcom/android/providers/contacts/HtcLegacyContactImporter;

.field year:I


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcLegacyContactImporter;)V
    .locals 1
    .parameter

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->this$0:Lcom/android/providers/contacts/HtcLegacyContactImporter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->day:I

    iput v0, p0, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->month:I

    iput v0, p0, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->year:I

    .line 1092
    return-void
.end method
