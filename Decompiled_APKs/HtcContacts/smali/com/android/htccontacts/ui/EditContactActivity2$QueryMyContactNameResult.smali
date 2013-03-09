.class Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryMyContactNameResult"
.end annotation


# static fields
.field static final EditNameMapKey_FamilyName:Ljava/lang/String; = "family_name"

.field static final EditNameMapKey_GivenName:Ljava/lang/String; = "given_name"

.field static final EditNameMapKey_MiddleName:Ljava/lang/String; = "middle_name"

.field static final EditNameMapKey_Name:Ljava/lang/String; = "name"

.field static final EditNameMapKey_Phonetic_FamilyName:Ljava/lang/String; = "phonetic_family_name"

.field static final EditNameMapKey_Phonetic_GivenName:Ljava/lang/String; = "phonetic_given_name"

.field static final EditNameMapKey_Phonetic_MiddleName:Ljava/lang/String; = "phonetic_middle_name"

.field static final EditNameMapKey_PrefixName:Ljava/lang/String; = "prefix_name"

.field static final EditNameMapKey_SuffixName:Ljava/lang/String; = "suffix_name"

.field static final EditNameMapKey_Type:Ljava/lang/String; = "type"


# instance fields
.field EditNameData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1536
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1536
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;-><init>()V

    return-void
.end method
