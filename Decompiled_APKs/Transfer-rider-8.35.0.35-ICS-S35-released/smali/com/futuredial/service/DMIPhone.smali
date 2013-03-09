.class public Lcom/futuredial/service/DMIPhone;
.super Ljava/lang/Object;
.source "DMIPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    }
.end annotation


# static fields
.field public static MUnit:[I

.field public static SUnit:[I


# instance fields
.field public m_bt:Lcom/futuredial/service/DMIBTDevice;

.field public m_cfgPhoneInfo:Ljava/lang/String;

.field public m_phoneProcType:Ljava/lang/String;

.field public m_phonemodel:Ljava/lang/String;

.field public m_supportMods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/service/DMIPhone$DMIPhoneModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/futuredial/service/DMIPhone;->SUnit:[I

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/futuredial/service/DMIPhone;->MUnit:[I

    return-void

    .line 32
    :array_0
    .array-data 0x4
        0x2ct 0x2t 0x6t 0x7ft
        0x28t 0x2t 0x6t 0x7ft
        0x30t 0x2t 0x6t 0x7ft
        0x26t 0x2t 0x6t 0x7ft
        0x2et 0x2t 0x6t 0x7ft
        0x2et 0x2t 0x6t 0x7ft
        0x32t 0x2t 0x6t 0x7ft
    .end array-data

    .line 40
    :array_1
    .array-data 0x4
        0x2dt 0x2t 0x6t 0x7ft
        0x29t 0x2t 0x6t 0x7ft
        0x31t 0x2t 0x6t 0x7ft
        0x27t 0x2t 0x6t 0x7ft
        0x2ft 0x2t 0x6t 0x7ft
        0x2ft 0x2t 0x6t 0x7ft
        0x33t 0x2t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone;->m_cfgPhoneInfo:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public get_failed_mods()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, failedModName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 212
    .local v2, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget-boolean v3, v2, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bSelected:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_result:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 213
    invoke-virtual {v2}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v2           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_1
    return-object v0
.end method

.method public get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .locals 3
    .parameter "idx"

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 169
    .local v1, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget-object v2, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    if-ne v2, p1, :cond_0

    .line 172
    .end local v1           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :goto_1
    return-object v1

    .line 166
    .restart local v1       #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v1           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public get_modulebyName(Ljava/lang/String;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .locals 3
    .parameter "nm"

    .prologue
    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 179
    .local v1, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    invoke-virtual {v1}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    .end local v1           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :goto_1
    return-object v1

    .line 176
    .restart local v1       #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v1           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public get_result()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v2, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 202
    .local v1, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget-object v3, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    iget v4, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_result:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v1           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_0
    return-object v2
.end method
