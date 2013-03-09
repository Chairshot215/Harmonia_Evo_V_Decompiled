.class Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;
.super Ljava/lang/Object;
.source "ContactCommonSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactCommonSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupTaskData"
.end annotation


# instance fields
.field public contactsIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public groupTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public intent:Landroid/content/Intent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ContactCommonSearchPicker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;-><init>()V

    return-void
.end method
