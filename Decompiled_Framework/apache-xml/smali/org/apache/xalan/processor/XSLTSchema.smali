.class public Lorg/apache/xalan/processor/XSLTSchema;
.super Lorg/apache/xalan/processor/XSLTElementDef;
.source "XSLTSchema.java"


# instance fields
.field private m_availElems:Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTSchema;->build()V

    return-void
.end method


# virtual methods
.method addAvailableElement(Lorg/apache/xml/utils/QName;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method build()V
    .locals 132

    new-instance v5, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v6, 0x0

    const-string v7, "href"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v6, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v7, 0x0

    const-string v8, "elements"

    const/16 v9, 0xc

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v6 .. v12}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v7, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v8, 0x0

    const-string v9, "method"

    const/16 v10, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct/range {v7 .. v13}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v8, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v9, 0x0

    const-string v10, "version"

    const/16 v11, 0xd

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v8 .. v14}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v9, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v10, 0x0

    const-string v11, "encoding"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct/range {v9 .. v15}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v10, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v11, 0x0

    const-string v12, "omit-xml-declaration"

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-direct/range {v10 .. v16}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v11, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v12, 0x0

    const-string v13, "standalone"

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v11 .. v17}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v12, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v13, 0x0

    const-string v14, "doctype-public"

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-direct/range {v12 .. v18}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v13, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v14, 0x0

    const-string v15, "doctype-system"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v13 .. v19}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v14, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    const-string v16, "cdata-section-elements"

    const/16 v17, 0x13

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v14 .. v20}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v15, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v16, 0x0

    const-string v17, "indent"

    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v15 .. v21}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v16, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v17, 0x0

    const-string v18, "media-type"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-direct/range {v16 .. v22}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v17, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v18, 0x0

    const-string v19, "name"

    const/16 v20, 0x9

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-direct/range {v17 .. v23}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v18, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v19, 0x0

    const-string v20, "name"

    const/16 v21, 0x12

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x2

    invoke-direct/range {v18 .. v24}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v19, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v20, 0x0

    const-string v21, "name"

    const/16 v22, 0x11

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-direct/range {v19 .. v25}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v20, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v21, 0x0

    const-string v22, "name"

    const/16 v23, 0x9

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-direct/range {v20 .. v26}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v21, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v22, 0x0

    const-string v23, "use"

    const/16 v24, 0x5

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-direct/range {v21 .. v27}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v22, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v23, 0x0

    const-string v24, "namespace"

    const/16 v25, 0x2

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x2

    invoke-direct/range {v22 .. v28}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v23, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v24, 0x0

    const-string v25, "decimal-separator"

    const/16 v26, 0x6

    const/16 v27, 0x0

    const/16 v28, 0x1

    const-string v29, "."

    invoke-direct/range {v23 .. v29}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v24, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v25, 0x0

    const-string v26, "infinity"

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x1

    const-string v30, "Infinity"

    invoke-direct/range {v24 .. v30}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v25, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v26, 0x0

    const-string v27, "minus-sign"

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v31, "-"

    invoke-direct/range {v25 .. v31}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v26, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v27, 0x0

    const-string v28, "NaN"

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    const-string v32, "NaN"

    invoke-direct/range {v26 .. v32}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v27, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v28, 0x0

    const-string v29, "percent"

    const/16 v30, 0x6

    const/16 v31, 0x0

    const/16 v32, 0x1

    const-string v33, "%"

    invoke-direct/range {v27 .. v33}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v28, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v29, 0x0

    const-string v30, "per-mille"

    const/16 v31, 0x6

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    invoke-direct/range {v28 .. v34}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v29, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v30, 0x0

    const-string v31, "zero-digit"

    const/16 v32, 0x6

    const/16 v33, 0x0

    const/16 v34, 0x1

    const-string v35, "0"

    invoke-direct/range {v29 .. v35}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v30, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v31, 0x0

    const-string v32, "digit"

    const/16 v33, 0x6

    const/16 v34, 0x0

    const/16 v35, 0x1

    const-string v36, "#"

    invoke-direct/range {v30 .. v36}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v31, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v32, 0x0

    const-string v33, "pattern-separator"

    const/16 v34, 0x6

    const/16 v35, 0x0

    const/16 v36, 0x1

    const-string v37, ";"

    invoke-direct/range {v31 .. v37}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v32, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v33, 0x0

    const-string v34, "grouping-separator"

    const/16 v35, 0x6

    const/16 v36, 0x0

    const/16 v37, 0x1

    const-string v38, ","

    invoke-direct/range {v32 .. v38}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v33, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v34, 0x0

    const-string v35, "use-attribute-sets"

    const/16 v36, 0xa

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-direct/range {v33 .. v39}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v34, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v35, 0x0

    const-string v36, "test"

    const/16 v37, 0x5

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x1

    invoke-direct/range {v34 .. v40}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v35, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v36, 0x0

    const-string v37, "select"

    const/16 v38, 0x5

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v41, 0x1

    invoke-direct/range {v35 .. v41}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v36, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v37, 0x0

    const-string v38, "select"

    const/16 v39, 0x5

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x1

    invoke-direct/range {v36 .. v42}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v37, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v38, 0x0

    const-string v39, "select"

    const/16 v40, 0x5

    const/16 v41, 0x0

    const/16 v42, 0x1

    const-string v43, "node()"

    invoke-direct/range {v37 .. v43}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v38, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v39, 0x0

    const-string v40, "select"

    const/16 v41, 0x5

    const/16 v42, 0x0

    const/16 v43, 0x1

    const-string v44, "."

    invoke-direct/range {v38 .. v44}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v39, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v40, 0x0

    const-string v41, "match"

    const/16 v42, 0x4

    const/16 v43, 0x1

    const/16 v44, 0x0

    const/16 v45, 0x1

    invoke-direct/range {v39 .. v45}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v40, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v41, 0x0

    const-string v42, "match"

    const/16 v43, 0x4

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x1

    invoke-direct/range {v40 .. v46}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v41, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v42, 0x0

    const-string v43, "priority"

    const/16 v44, 0x7

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x1

    invoke-direct/range {v41 .. v47}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v42, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v43, 0x0

    const-string v44, "mode"

    const/16 v45, 0x9

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x1

    invoke-direct/range {v42 .. v48}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v43, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v44, "http://www.w3.org/XML/1998/namespace"

    const-string v45, "space"

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x2

    const-string v50, "default"

    const/16 v51, 0x2

    const-string v52, "preserve"

    const/16 v53, 0x1

    invoke-direct/range {v43 .. v53}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    new-instance v44, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v45, "http://www.w3.org/XML/1998/namespace"

    const-string v46, "space"

    const/16 v47, 0x2

    const/16 v48, 0x0

    const/16 v49, 0x1

    const/16 v50, 0x1

    invoke-direct/range {v44 .. v50}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v45, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v46, 0x0

    const-string v47, "stylesheet-prefix"

    const/16 v48, 0x1

    const/16 v49, 0x1

    const/16 v50, 0x0

    const/16 v51, 0x1

    invoke-direct/range {v45 .. v51}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v46, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v47, 0x0

    const-string v48, "result-prefix"

    const/16 v49, 0x1

    const/16 v50, 0x1

    const/16 v51, 0x0

    const/16 v52, 0x1

    invoke-direct/range {v46 .. v52}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v47, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v48, 0x0

    const-string v49, "disable-output-escaping"

    const/16 v50, 0x8

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x1

    invoke-direct/range {v47 .. v53}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v48, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v49, 0x0

    const-string v50, "level"

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x1

    const-string v55, "single"

    const/16 v56, 0x1

    const-string v57, "multiple"

    const/16 v58, 0x2

    const-string v59, "any"

    const/16 v60, 0x3

    invoke-direct/range {v48 .. v60}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    const-string v70, "single"

    move-object/from16 v0, v48

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    new-instance v49, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v50, 0x0

    const-string v51, "count"

    const/16 v52, 0x4

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x1

    invoke-direct/range {v49 .. v55}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v50, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v51, 0x0

    const-string v52, "from"

    const/16 v53, 0x4

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x1

    invoke-direct/range {v50 .. v56}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v51, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v52, 0x0

    const-string v53, "value"

    const/16 v54, 0x5

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x1

    invoke-direct/range {v51 .. v57}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v52, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v53, 0x0

    const-string v54, "format"

    const/16 v55, 0x1

    const/16 v56, 0x0

    const/16 v57, 0x1

    const/16 v58, 0x1

    invoke-direct/range {v52 .. v58}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    const-string v70, "1"

    move-object/from16 v0, v52

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    new-instance v53, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v54, 0x0

    const-string v55, "lang"

    const/16 v56, 0xd

    const/16 v57, 0x0

    const/16 v58, 0x1

    const/16 v59, 0x1

    invoke-direct/range {v53 .. v59}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v54, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v55, 0x0

    const-string v56, "letter-value"

    const/16 v57, 0x0

    const/16 v58, 0x1

    const/16 v59, 0x0

    const/16 v60, 0x1

    const-string v61, "alphabetic"

    const/16 v62, 0x1

    const-string v63, "traditional"

    const/16 v64, 0x2

    invoke-direct/range {v54 .. v64}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    new-instance v55, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v56, 0x0

    const-string v57, "grouping-separator"

    const/16 v58, 0x6

    const/16 v59, 0x0

    const/16 v60, 0x1

    const/16 v61, 0x1

    invoke-direct/range {v55 .. v61}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v56, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v57, 0x0

    const-string v58, "grouping-size"

    const/16 v59, 0x7

    const/16 v60, 0x0

    const/16 v61, 0x1

    const/16 v62, 0x1

    invoke-direct/range {v56 .. v62}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v57, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v58, 0x0

    const-string v59, "data-type"

    const/16 v60, 0x0

    const/16 v61, 0x1

    const/16 v62, 0x1

    const/16 v63, 0x1

    const-string v64, "text"

    const/16 v65, 0x1

    const-string v66, "number"

    const/16 v67, 0x1

    invoke-direct/range {v57 .. v67}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    const-string v70, "text"

    move-object/from16 v0, v57

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    new-instance v58, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v59, 0x0

    const-string v60, "order"

    const/16 v61, 0x0

    const/16 v62, 0x1

    const/16 v63, 0x0

    const/16 v64, 0x1

    const-string v65, "ascending"

    const/16 v66, 0x1

    const-string v67, "descending"

    const/16 v68, 0x2

    invoke-direct/range {v58 .. v68}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    const-string v70, "ascending"

    move-object/from16 v0, v58

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    new-instance v59, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v60, 0x0

    const-string v61, "case-order"

    const/16 v62, 0x0

    const/16 v63, 0x1

    const/16 v64, 0x0

    const/16 v65, 0x1

    const-string v66, "upper-first"

    const/16 v67, 0x1

    const-string v68, "lower-first"

    const/16 v69, 0x2

    invoke-direct/range {v59 .. v69}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    new-instance v60, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v61, 0x0

    const-string v62, "terminate"

    const/16 v63, 0x8

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x1

    invoke-direct/range {v60 .. v66}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    const-string v70, "no"

    move-object/from16 v0, v60

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    new-instance v61, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v62, "http://www.w3.org/1999/XSL/Transform"

    const-string v63, "exclude-result-prefixes"

    const/16 v64, 0x14

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x1

    invoke-direct/range {v61 .. v67}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v62, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v63, "http://www.w3.org/1999/XSL/Transform"

    const-string v64, "extension-element-prefixes"

    const/16 v65, 0xf

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x1

    invoke-direct/range {v62 .. v68}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v63, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v64, "http://www.w3.org/1999/XSL/Transform"

    const-string v65, "use-attribute-sets"

    const/16 v66, 0xa

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x1

    invoke-direct/range {v63 .. v69}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v64, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v65, "http://www.w3.org/1999/XSL/Transform"

    const-string v66, "version"

    const/16 v67, 0xd

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x1

    invoke-direct/range {v64 .. v70}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v65, Lorg/apache/xalan/processor/XSLTElementDef;

    const/16 v67, 0x0

    const-string v68, "text()"

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    new-instance v72, Lorg/apache/xalan/processor/ProcessorCharacters;

    invoke-direct/range {v72 .. v72}, Lorg/apache/xalan/processor/ProcessorCharacters;-><init>()V

    const-class v73, Lorg/apache/xalan/templates/ElemTextLiteral;

    move-object/from16 v66, p0

    invoke-direct/range {v65 .. v73}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    const/16 v70, 0x2

    move-object/from16 v0, v65

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setType(I)V

    new-instance v66, Lorg/apache/xalan/processor/XSLTElementDef;

    const/16 v68, 0x0

    const-string v69, "text()"

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const-class v74, Lorg/apache/xalan/templates/ElemTextLiteral;

    move-object/from16 v67, p0

    invoke-direct/range {v66 .. v74}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    const/16 v70, 0x2

    move-object/from16 v0, v65

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setType(I)V

    new-instance v67, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v68, 0x0

    const-string v69, "*"

    const/16 v70, 0x3

    const/16 v71, 0x0

    const/16 v72, 0x1

    const/16 v73, 0x2

    invoke-direct/range {v67 .. v73}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v68, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v69, "http://www.w3.org/1999/XSL/Transform"

    const-string v70, "*"

    const/16 v71, 0x1

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x2

    invoke-direct/range {v68 .. v74}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    const/16 v70, 0x17

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v74, v0

    const/16 v70, 0x18

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v80, v0

    const/16 v70, 0x18

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v130, v0

    const/16 v70, 0x18

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v126, v0

    const/16 v70, 0xf

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v124, v0

    new-instance v69, Lorg/apache/xalan/processor/XSLTElementDef;

    const/16 v71, 0x0

    const-string v72, "*"

    const/16 v73, 0x0

    const/16 v70, 0x7

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v75, v0

    const/16 v70, 0x0

    aput-object v44, v75, v70

    const/16 v70, 0x1

    aput-object v61, v75, v70

    const/16 v70, 0x2

    aput-object v62, v75, v70

    const/16 v70, 0x3

    aput-object v63, v75, v70

    const/16 v70, 0x4

    aput-object v64, v75, v70

    const/16 v70, 0x5

    aput-object v68, v75, v70

    const/16 v70, 0x6

    aput-object v67, v75, v70

    new-instance v76, Lorg/apache/xalan/processor/ProcessorLRE;

    invoke-direct/range {v76 .. v76}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    const-class v77, Lorg/apache/xalan/templates/ElemLiteralResult;

    const/16 v78, 0x14

    const/16 v79, 0x1

    move-object/from16 v70, p0

    invoke-direct/range {v69 .. v79}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v75, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v77, "*"

    const-string v78, "unknown"

    const/16 v79, 0x0

    const/16 v70, 0x6

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v81, v0

    const/16 v70, 0x0

    aput-object v61, v81, v70

    const/16 v70, 0x1

    aput-object v62, v81, v70

    const/16 v70, 0x2

    aput-object v63, v81, v70

    const/16 v70, 0x3

    aput-object v64, v81, v70

    const/16 v70, 0x4

    aput-object v68, v81, v70

    const/16 v70, 0x5

    aput-object v67, v81, v70

    new-instance v82, Lorg/apache/xalan/processor/ProcessorUnknown;

    invoke-direct/range {v82 .. v82}, Lorg/apache/xalan/processor/ProcessorUnknown;-><init>()V

    const-class v83, Lorg/apache/xalan/templates/ElemUnknown;

    const/16 v84, 0x14

    const/16 v85, 0x1

    move-object/from16 v76, p0

    invoke-direct/range {v75 .. v85}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v81, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v83, "http://www.w3.org/1999/XSL/Transform"

    const-string v84, "value-of"

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v87, v0

    const/16 v70, 0x0

    aput-object v35, v87, v70

    const/16 v70, 0x1

    aput-object v47, v87, v70

    new-instance v88, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v88 .. v88}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v89, Lorg/apache/xalan/templates/ElemValueOf;

    const/16 v90, 0x14

    const/16 v91, 0x1

    move-object/from16 v82, p0

    invoke-direct/range {v81 .. v91}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v82, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v84, "http://www.w3.org/1999/XSL/Transform"

    const-string v85, "copy-of"

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v88, v0

    const/16 v70, 0x0

    aput-object v35, v88, v70

    new-instance v89, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v89 .. v89}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v90, Lorg/apache/xalan/templates/ElemCopyOf;

    const/16 v91, 0x14

    const/16 v92, 0x1

    move-object/from16 v83, p0

    invoke-direct/range {v82 .. v92}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v83, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v85, "http://www.w3.org/1999/XSL/Transform"

    const-string v86, "number"

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v70, 0x9

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v89, v0

    const/16 v70, 0x0

    aput-object v48, v89, v70

    const/16 v70, 0x1

    aput-object v49, v89, v70

    const/16 v70, 0x2

    aput-object v50, v89, v70

    const/16 v70, 0x3

    aput-object v51, v89, v70

    const/16 v70, 0x4

    aput-object v52, v89, v70

    const/16 v70, 0x5

    aput-object v53, v89, v70

    const/16 v70, 0x6

    aput-object v54, v89, v70

    const/16 v70, 0x7

    aput-object v55, v89, v70

    const/16 v70, 0x8

    aput-object v56, v89, v70

    new-instance v90, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v90 .. v90}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v91, Lorg/apache/xalan/templates/ElemNumber;

    const/16 v92, 0x14

    const/16 v93, 0x1

    move-object/from16 v84, p0

    invoke-direct/range {v83 .. v93}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v84, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v86, "http://www.w3.org/1999/XSL/Transform"

    const-string v87, "sort"

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v70, 0x5

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v90, v0

    const/16 v70, 0x0

    aput-object v38, v90, v70

    const/16 v70, 0x1

    aput-object v53, v90, v70

    const/16 v70, 0x2

    aput-object v57, v90, v70

    const/16 v70, 0x3

    aput-object v58, v90, v70

    const/16 v70, 0x4

    aput-object v59, v90, v70

    new-instance v91, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v91 .. v91}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v92, Lorg/apache/xalan/templates/ElemSort;

    const/16 v93, 0x13

    const/16 v94, 0x1

    move-object/from16 v85, p0

    invoke-direct/range {v84 .. v94}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v85, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v87, "http://www.w3.org/1999/XSL/Transform"

    const-string v88, "with-param"

    const/16 v89, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v91, v0

    const/16 v70, 0x0

    aput-object v17, v91, v70

    const/16 v70, 0x1

    aput-object v36, v91, v70

    new-instance v92, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v92 .. v92}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v93, Lorg/apache/xalan/templates/ElemWithParam;

    const/16 v94, 0x13

    const/16 v95, 0x1

    move-object/from16 v86, p0

    move-object/from16 v90, v74

    invoke-direct/range {v85 .. v95}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v86, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v88, "http://www.w3.org/1999/XSL/Transform"

    const-string v89, "apply-templates"

    const/16 v90, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v91, v0

    const/16 v70, 0x0

    aput-object v84, v91, v70

    const/16 v70, 0x1

    aput-object v85, v91, v70

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v92, v0

    const/16 v70, 0x0

    aput-object v37, v92, v70

    const/16 v70, 0x1

    aput-object v42, v92, v70

    new-instance v93, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v93 .. v93}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v94, Lorg/apache/xalan/templates/ElemApplyTemplates;

    const/16 v95, 0x14

    const/16 v96, 0x1

    move-object/from16 v87, p0

    invoke-direct/range {v86 .. v96}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v87, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v89, "http://www.w3.org/1999/XSL/Transform"

    const-string v90, "apply-imports"

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v70, 0x0

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v93, v0

    new-instance v94, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v94 .. v94}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v95, Lorg/apache/xalan/templates/ElemApplyImport;

    move-object/from16 v88, p0

    invoke-direct/range {v87 .. v95}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    new-instance v88, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v90, "http://www.w3.org/1999/XSL/Transform"

    const-string v91, "for-each"

    const/16 v92, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v94, v0

    const/16 v70, 0x0

    aput-object v35, v94, v70

    const/16 v70, 0x1

    aput-object v43, v94, v70

    new-instance v95, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v95 .. v95}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v96, Lorg/apache/xalan/templates/ElemForEach;

    const/16 v97, 0x1

    const/16 v98, 0x0

    const/16 v99, 0x1

    const/16 v100, 0x14

    const/16 v101, 0x1

    move-object/from16 v89, p0

    move-object/from16 v93, v130

    invoke-direct/range {v88 .. v101}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V

    new-instance v89, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v91, "http://www.w3.org/1999/XSL/Transform"

    const-string v92, "if"

    const/16 v93, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v95, v0

    const/16 v70, 0x0

    aput-object v34, v95, v70

    const/16 v70, 0x1

    aput-object v43, v95, v70

    new-instance v96, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v96 .. v96}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v97, Lorg/apache/xalan/templates/ElemIf;

    const/16 v98, 0x14

    const/16 v99, 0x1

    move-object/from16 v90, p0

    move-object/from16 v94, v74

    invoke-direct/range {v89 .. v99}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v90, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v92, "http://www.w3.org/1999/XSL/Transform"

    const-string v93, "when"

    const/16 v94, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v96, v0

    const/16 v70, 0x0

    aput-object v34, v96, v70

    const/16 v70, 0x1

    aput-object v43, v96, v70

    new-instance v97, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v97 .. v97}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v98, Lorg/apache/xalan/templates/ElemWhen;

    const/16 v99, 0x0

    const/16 v100, 0x1

    const/16 v101, 0x1

    const/16 v102, 0x1

    move-object/from16 v91, p0

    move-object/from16 v95, v74

    invoke-direct/range {v90 .. v102}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V

    new-instance v91, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v93, "http://www.w3.org/1999/XSL/Transform"

    const-string v94, "otherwise"

    const/16 v95, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v97, v0

    const/16 v70, 0x0

    aput-object v43, v97, v70

    new-instance v98, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v98 .. v98}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v99, Lorg/apache/xalan/templates/ElemOtherwise;

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x2

    const/16 v103, 0x0

    move-object/from16 v92, p0

    move-object/from16 v96, v74

    invoke-direct/range {v91 .. v103}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V

    new-instance v92, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v94, "http://www.w3.org/1999/XSL/Transform"

    const-string v95, "choose"

    const/16 v96, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v97, v0

    const/16 v70, 0x0

    aput-object v90, v97, v70

    const/16 v70, 0x1

    aput-object v91, v97, v70

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v98, v0

    const/16 v70, 0x0

    aput-object v43, v98, v70

    new-instance v99, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v99 .. v99}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v100, Lorg/apache/xalan/templates/ElemChoose;

    const/16 v101, 0x1

    const/16 v102, 0x0

    const/16 v103, 0x1

    const/16 v104, 0x14

    const/16 v105, 0x1

    move-object/from16 v93, p0

    invoke-direct/range {v92 .. v105}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V

    new-instance v93, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v95, "http://www.w3.org/1999/XSL/Transform"

    const-string v96, "attribute"

    const/16 v97, 0x0

    const/16 v70, 0x3

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v99, v0

    const/16 v70, 0x0

    aput-object v18, v99, v70

    const/16 v70, 0x1

    aput-object v22, v99, v70

    const/16 v70, 0x2

    aput-object v43, v99, v70

    new-instance v100, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v100 .. v100}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v101, Lorg/apache/xalan/templates/ElemAttribute;

    const/16 v102, 0x14

    const/16 v103, 0x1

    move-object/from16 v94, p0

    move-object/from16 v98, v124

    invoke-direct/range {v93 .. v103}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v94, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v96, "http://www.w3.org/1999/XSL/Transform"

    const-string v97, "call-template"

    const/16 v98, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v99, v0

    const/16 v70, 0x0

    aput-object v85, v99, v70

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v100, v0

    const/16 v70, 0x0

    aput-object v17, v100, v70

    new-instance v101, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v101 .. v101}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v102, Lorg/apache/xalan/templates/ElemCallTemplate;

    const/16 v103, 0x14

    const/16 v104, 0x1

    move-object/from16 v95, p0

    invoke-direct/range {v94 .. v104}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v95, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v97, "http://www.w3.org/1999/XSL/Transform"

    const-string v98, "variable"

    const/16 v99, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v101, v0

    const/16 v70, 0x0

    aput-object v17, v101, v70

    const/16 v70, 0x1

    aput-object v36, v101, v70

    new-instance v102, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v102 .. v102}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v103, Lorg/apache/xalan/templates/ElemVariable;

    const/16 v104, 0x14

    const/16 v105, 0x1

    move-object/from16 v96, p0

    move-object/from16 v100, v74

    invoke-direct/range {v95 .. v105}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v96, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v98, "http://www.w3.org/1999/XSL/Transform"

    const-string v99, "param"

    const/16 v100, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v102, v0

    const/16 v70, 0x0

    aput-object v17, v102, v70

    const/16 v70, 0x1

    aput-object v36, v102, v70

    new-instance v103, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v103 .. v103}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v104, Lorg/apache/xalan/templates/ElemParam;

    const/16 v105, 0x13

    const/16 v106, 0x1

    move-object/from16 v97, p0

    move-object/from16 v101, v74

    invoke-direct/range {v96 .. v106}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v97, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v99, "http://www.w3.org/1999/XSL/Transform"

    const-string v100, "text"

    const/16 v101, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v102, v0

    const/16 v70, 0x0

    aput-object v65, v102, v70

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v103, v0

    const/16 v70, 0x0

    aput-object v47, v103, v70

    new-instance v104, Lorg/apache/xalan/processor/ProcessorText;

    invoke-direct/range {v104 .. v104}, Lorg/apache/xalan/processor/ProcessorText;-><init>()V

    const-class v105, Lorg/apache/xalan/templates/ElemText;

    const/16 v106, 0x14

    const/16 v107, 0x1

    move-object/from16 v98, p0

    invoke-direct/range {v97 .. v107}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v98, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v100, "http://www.w3.org/1999/XSL/Transform"

    const-string v101, "processing-instruction"

    const/16 v102, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v104, v0

    const/16 v70, 0x0

    aput-object v19, v104, v70

    const/16 v70, 0x1

    aput-object v43, v104, v70

    new-instance v105, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v105 .. v105}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v106, Lorg/apache/xalan/templates/ElemPI;

    const/16 v107, 0x14

    const/16 v108, 0x1

    move-object/from16 v99, p0

    move-object/from16 v103, v124

    invoke-direct/range {v98 .. v108}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v99, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v101, "http://www.w3.org/1999/XSL/Transform"

    const-string v102, "element"

    const/16 v103, 0x0

    const/16 v70, 0x4

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v105, v0

    const/16 v70, 0x0

    aput-object v18, v105, v70

    const/16 v70, 0x1

    aput-object v22, v105, v70

    const/16 v70, 0x2

    aput-object v33, v105, v70

    const/16 v70, 0x3

    aput-object v43, v105, v70

    new-instance v106, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v106 .. v106}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v107, Lorg/apache/xalan/templates/ElemElement;

    const/16 v108, 0x14

    const/16 v109, 0x1

    move-object/from16 v100, p0

    move-object/from16 v104, v74

    invoke-direct/range {v99 .. v109}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v100, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v102, "http://www.w3.org/1999/XSL/Transform"

    const-string v103, "comment"

    const/16 v104, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v106, v0

    const/16 v70, 0x0

    aput-object v43, v106, v70

    new-instance v107, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v107 .. v107}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v108, Lorg/apache/xalan/templates/ElemComment;

    const/16 v109, 0x14

    const/16 v110, 0x1

    move-object/from16 v101, p0

    move-object/from16 v105, v124

    invoke-direct/range {v100 .. v110}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v101, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v103, "http://www.w3.org/1999/XSL/Transform"

    const-string v104, "copy"

    const/16 v105, 0x0

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v107, v0

    const/16 v70, 0x0

    aput-object v43, v107, v70

    const/16 v70, 0x1

    aput-object v33, v107, v70

    new-instance v108, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v108 .. v108}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v109, Lorg/apache/xalan/templates/ElemCopy;

    const/16 v110, 0x14

    const/16 v111, 0x1

    move-object/from16 v102, p0

    move-object/from16 v106, v74

    invoke-direct/range {v101 .. v111}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v102, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v104, "http://www.w3.org/1999/XSL/Transform"

    const-string v105, "message"

    const/16 v106, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v108, v0

    const/16 v70, 0x0

    aput-object v60, v108, v70

    new-instance v109, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v109 .. v109}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v110, Lorg/apache/xalan/templates/ElemMessage;

    const/16 v111, 0x14

    const/16 v112, 0x1

    move-object/from16 v103, p0

    move-object/from16 v107, v74

    invoke-direct/range {v102 .. v112}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v103, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v105, "http://www.w3.org/1999/XSL/Transform"

    const-string v106, "fallback"

    const/16 v107, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v109, v0

    const/16 v70, 0x0

    aput-object v43, v109, v70

    new-instance v110, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v110 .. v110}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v111, Lorg/apache/xalan/templates/ElemFallback;

    const/16 v112, 0x14

    const/16 v113, 0x1

    move-object/from16 v104, p0

    move-object/from16 v108, v74

    invoke-direct/range {v103 .. v113}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v104, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v106, "http://exslt.org/functions"

    const-string v107, "function"

    const/16 v108, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v110, v0

    const/16 v70, 0x0

    aput-object v17, v110, v70

    new-instance v111, Lorg/apache/xalan/processor/ProcessorExsltFunction;

    invoke-direct/range {v111 .. v111}, Lorg/apache/xalan/processor/ProcessorExsltFunction;-><init>()V

    const-class v112, Lorg/apache/xalan/templates/ElemExsltFunction;

    move-object/from16 v105, p0

    move-object/from16 v109, v126

    invoke-direct/range {v104 .. v112}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    new-instance v105, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v107, "http://exslt.org/functions"

    const-string v108, "result"

    const/16 v109, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v111, v0

    const/16 v70, 0x0

    aput-object v36, v111, v70

    new-instance v112, Lorg/apache/xalan/processor/ProcessorExsltFuncResult;

    invoke-direct/range {v112 .. v112}, Lorg/apache/xalan/processor/ProcessorExsltFuncResult;-><init>()V

    const-class v113, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    move-object/from16 v106, p0

    move-object/from16 v110, v74

    invoke-direct/range {v105 .. v113}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    const/16 v127, 0x0

    add-int/lit8 v128, v127, 0x1

    aput-object v65, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v86, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v94, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v87, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v88, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v81, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v82, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v83, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v92, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v89, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v97, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v101, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v95, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v102, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v103, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v98, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v100, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v99, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v93, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v69, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v75, v74, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v104, v74, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v105, v74, v127

    const/16 v70, 0x0

    const/16 v71, 0x0

    move-object/from16 v0, v74

    move/from16 v1, v70

    move-object/from16 v2, v80

    move/from16 v3, v71

    move/from16 v4, v128

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v70, 0x0

    const/16 v71, 0x0

    move-object/from16 v0, v74

    move/from16 v1, v70

    move-object/from16 v2, v130

    move/from16 v3, v71

    move/from16 v4, v128

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v70, 0x0

    const/16 v71, 0x0

    move-object/from16 v0, v74

    move/from16 v1, v70

    move-object/from16 v2, v126

    move/from16 v3, v71

    move/from16 v4, v128

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v96, v80, v128

    aput-object v84, v130, v128

    aput-object v96, v126, v128

    const/16 v127, 0x0

    add-int/lit8 v128, v127, 0x1

    aput-object v65, v124, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v86, v124, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v94, v124, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v87, v124, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v88, v124, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v81, v124, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v82, v124, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v83, v124, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v92, v124, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v89, v124, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v97, v124, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v101, v124, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v95, v124, v127

    add-int/lit8 v127, v128, 0x1

    aput-object v102, v124, v128

    add-int/lit8 v128, v127, 0x1

    aput-object v103, v124, v127

    new-instance v106, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v108, "http://www.w3.org/1999/XSL/Transform"

    const-string v109, "import"

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v112, v0

    const/16 v70, 0x0

    aput-object v5, v112, v70

    new-instance v113, Lorg/apache/xalan/processor/ProcessorImport;

    invoke-direct/range {v113 .. v113}, Lorg/apache/xalan/processor/ProcessorImport;-><init>()V

    const/16 v114, 0x0

    const/16 v115, 0x1

    const/16 v116, 0x1

    move-object/from16 v107, p0

    invoke-direct/range {v106 .. v116}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v107, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v109, "http://www.w3.org/1999/XSL/Transform"

    const-string v110, "include"

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v113, v0

    const/16 v70, 0x0

    aput-object v5, v113, v70

    new-instance v114, Lorg/apache/xalan/processor/ProcessorInclude;

    invoke-direct/range {v114 .. v114}, Lorg/apache/xalan/processor/ProcessorInclude;-><init>()V

    const/16 v115, 0x0

    const/16 v116, 0x14

    const/16 v117, 0x1

    move-object/from16 v108, p0

    invoke-direct/range {v107 .. v117}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v129, v0

    const/16 v70, 0x0

    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v109, 0x0

    const-string v110, "lang"

    const/16 v111, 0xd

    const/16 v112, 0x1

    const/16 v113, 0x0

    const/16 v114, 0x2

    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    aput-object v108, v129, v70

    const/16 v70, 0x1

    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v109, 0x0

    const-string v110, "src"

    const/16 v111, 0x2

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x2

    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    aput-object v108, v129, v70

    const/16 v70, 0x3

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v125, v0

    const/16 v70, 0x0

    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v109, 0x0

    const-string v110, "prefix"

    const/16 v111, 0xd

    const/16 v112, 0x1

    const/16 v113, 0x0

    const/16 v114, 0x2

    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    aput-object v108, v125, v70

    const/16 v70, 0x1

    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v109, 0x0

    const-string v110, "elements"

    const/16 v111, 0xe

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x2

    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    aput-object v108, v125, v70

    const/16 v70, 0x2

    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v109, 0x0

    const-string v110, "functions"

    const/16 v111, 0xe

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x2

    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    aput-object v108, v125, v70

    const/16 v70, 0x11

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v131, v0

    const/16 v70, 0x0

    aput-object v107, v131, v70

    const/16 v70, 0x1

    aput-object v106, v131, v70

    const/16 v70, 0x2

    aput-object v66, v131, v70

    const/16 v70, 0x3

    aput-object v75, v131, v70

    const/16 v70, 0x4

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://www.w3.org/1999/XSL/Transform"

    const-string v111, "strip-space"

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v71, 0x1

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v114, v0

    const/16 v71, 0x0

    aput-object v6, v114, v71

    new-instance v115, Lorg/apache/xalan/processor/ProcessorStripSpace;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorStripSpace;-><init>()V

    const/16 v116, 0x0

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v131, v70

    const/16 v70, 0x5

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://www.w3.org/1999/XSL/Transform"

    const-string v111, "preserve-space"

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v71, 0x1

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v114, v0

    const/16 v71, 0x0

    aput-object v6, v114, v71

    new-instance v115, Lorg/apache/xalan/processor/ProcessorPreserveSpace;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorPreserveSpace;-><init>()V

    const/16 v116, 0x0

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v131, v70

    const/16 v70, 0x6

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://www.w3.org/1999/XSL/Transform"

    const-string v111, "output"

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v71, 0xb

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v114, v0

    const/16 v71, 0x0

    aput-object v7, v114, v71

    const/16 v71, 0x1

    aput-object v8, v114, v71

    const/16 v71, 0x2

    aput-object v9, v114, v71

    const/16 v71, 0x3

    aput-object v10, v114, v71

    const/16 v71, 0x4

    aput-object v11, v114, v71

    const/16 v71, 0x5

    aput-object v12, v114, v71

    const/16 v71, 0x6

    aput-object v13, v114, v71

    const/16 v71, 0x7

    aput-object v14, v114, v71

    const/16 v71, 0x8

    aput-object v15, v114, v71

    const/16 v71, 0x9

    aput-object v16, v114, v71

    const/16 v71, 0xa

    sget-object v72, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    aput-object v72, v114, v71

    new-instance v115, Lorg/apache/xalan/processor/ProcessorOutputElem;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorOutputElem;-><init>()V

    const/16 v116, 0x0

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v131, v70

    const/16 v70, 0x7

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://www.w3.org/1999/XSL/Transform"

    const-string v111, "key"

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v71, 0x3

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v114, v0

    const/16 v71, 0x0

    aput-object v17, v114, v71

    const/16 v71, 0x1

    aput-object v39, v114, v71

    const/16 v71, 0x2

    aput-object v21, v114, v71

    new-instance v115, Lorg/apache/xalan/processor/ProcessorKey;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorKey;-><init>()V

    const/16 v116, 0x0

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v131, v70

    const/16 v70, 0x8

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://www.w3.org/1999/XSL/Transform"

    const-string v111, "decimal-format"

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v71, 0xb

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v114, v0

    const/16 v71, 0x0

    aput-object v20, v114, v71

    const/16 v71, 0x1

    aput-object v23, v114, v71

    const/16 v71, 0x2

    aput-object v32, v114, v71

    const/16 v71, 0x3

    aput-object v24, v114, v71

    const/16 v71, 0x4

    aput-object v25, v114, v71

    const/16 v71, 0x5

    aput-object v26, v114, v71

    const/16 v71, 0x6

    aput-object v27, v114, v71

    const/16 v71, 0x7

    aput-object v28, v114, v71

    const/16 v71, 0x8

    aput-object v29, v114, v71

    const/16 v71, 0x9

    aput-object v30, v114, v71

    const/16 v71, 0xa

    aput-object v31, v114, v71

    new-instance v115, Lorg/apache/xalan/processor/ProcessorDecimalFormat;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorDecimalFormat;-><init>()V

    const/16 v116, 0x0

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v131, v70

    const/16 v70, 0x9

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://www.w3.org/1999/XSL/Transform"

    const-string v111, "attribute-set"

    const/16 v112, 0x0

    const/16 v71, 0x1

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v113, v0

    const/16 v71, 0x0

    aput-object v93, v113, v71

    const/16 v71, 0x2

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v114, v0

    const/16 v71, 0x0

    aput-object v17, v114, v71

    const/16 v71, 0x1

    aput-object v33, v114, v71

    new-instance v115, Lorg/apache/xalan/processor/ProcessorAttributeSet;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorAttributeSet;-><init>()V

    const/16 v116, 0x0

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v131, v70

    const/16 v70, 0xa

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://www.w3.org/1999/XSL/Transform"

    const-string v111, "variable"

    const/16 v112, 0x0

    const/16 v71, 0x2

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v114, v0

    const/16 v71, 0x0

    aput-object v17, v114, v71

    const/16 v71, 0x1

    aput-object v36, v114, v71

    new-instance v115, Lorg/apache/xalan/processor/ProcessorGlobalVariableDecl;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorGlobalVariableDecl;-><init>()V

    const-class v116, Lorg/apache/xalan/templates/ElemVariable;

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    move-object/from16 v113, v74

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v131, v70

    const/16 v70, 0xb

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://www.w3.org/1999/XSL/Transform"

    const-string v111, "param"

    const/16 v112, 0x0

    const/16 v71, 0x2

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v114, v0

    const/16 v71, 0x0

    aput-object v17, v114, v71

    const/16 v71, 0x1

    aput-object v36, v114, v71

    new-instance v115, Lorg/apache/xalan/processor/ProcessorGlobalParamDecl;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorGlobalParamDecl;-><init>()V

    const-class v116, Lorg/apache/xalan/templates/ElemParam;

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    move-object/from16 v113, v74

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v131, v70

    const/16 v70, 0xc

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://www.w3.org/1999/XSL/Transform"

    const-string v111, "template"

    const/16 v112, 0x0

    const/16 v71, 0x5

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v114, v0

    const/16 v71, 0x0

    aput-object v40, v114, v71

    const/16 v71, 0x1

    aput-object v20, v114, v71

    const/16 v71, 0x2

    aput-object v41, v114, v71

    const/16 v71, 0x3

    aput-object v42, v114, v71

    const/16 v71, 0x4

    aput-object v43, v114, v71

    new-instance v115, Lorg/apache/xalan/processor/ProcessorTemplate;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorTemplate;-><init>()V

    const-class v116, Lorg/apache/xalan/templates/ElemTemplate;

    const/16 v117, 0x1

    const/16 v118, 0x14

    const/16 v119, 0x1

    move-object/from16 v109, p0

    move-object/from16 v113, v80

    invoke-direct/range {v108 .. v119}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V

    aput-object v108, v131, v70

    const/16 v70, 0xd

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://www.w3.org/1999/XSL/Transform"

    const-string v111, "namespace-alias"

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v71, 0x2

    move/from16 v0, v71

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v114, v0

    const/16 v71, 0x0

    aput-object v45, v114, v71

    const/16 v71, 0x1

    aput-object v46, v114, v71

    new-instance v115, Lorg/apache/xalan/processor/ProcessorNamespaceAlias;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorNamespaceAlias;-><init>()V

    const/16 v116, 0x0

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v131, v70

    const/16 v70, 0xe

    new-instance v71, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v72, "http://xml.apache.org/xalan"

    const-string v73, "component"

    const/16 v76, 0x0

    const/16 v77, 0x1

    move/from16 v0, v77

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v77, v0

    const/16 v78, 0x0

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://xml.apache.org/xalan"

    const-string v111, "script"

    const/16 v112, 0x0

    const/16 v79, 0x1

    move/from16 v0, v79

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v113, v0

    const/16 v79, 0x0

    aput-object v65, v113, v79

    new-instance v115, Lorg/apache/xalan/processor/ProcessorLRE;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    const-class v116, Lorg/apache/xalan/templates/ElemExtensionScript;

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    move-object/from16 v114, v129

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v77, v78

    new-instance v115, Lorg/apache/xalan/processor/ProcessorLRE;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    const-class v116, Lorg/apache/xalan/templates/ElemExtensionDecl;

    move-object/from16 v108, v71

    move-object/from16 v109, p0

    move-object/from16 v110, v72

    move-object/from16 v111, v73

    move-object/from16 v112, v76

    move-object/from16 v113, v77

    move-object/from16 v114, v125

    invoke-direct/range {v108 .. v116}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    aput-object v71, v131, v70

    const/16 v70, 0xf

    new-instance v71, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v72, "http://xml.apache.org/xslt"

    const-string v73, "component"

    const/16 v76, 0x0

    const/16 v77, 0x1

    move/from16 v0, v77

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v77, v0

    const/16 v78, 0x0

    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v110, "http://xml.apache.org/xslt"

    const-string v111, "script"

    const/16 v112, 0x0

    const/16 v79, 0x1

    move/from16 v0, v79

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v113, v0

    const/16 v79, 0x0

    aput-object v65, v113, v79

    new-instance v115, Lorg/apache/xalan/processor/ProcessorLRE;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    const-class v116, Lorg/apache/xalan/templates/ElemExtensionScript;

    const/16 v117, 0x14

    const/16 v118, 0x1

    move-object/from16 v109, p0

    move-object/from16 v114, v129

    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v108, v77, v78

    new-instance v115, Lorg/apache/xalan/processor/ProcessorLRE;

    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    const-class v116, Lorg/apache/xalan/templates/ElemExtensionDecl;

    move-object/from16 v108, v71

    move-object/from16 v109, p0

    move-object/from16 v110, v72

    move-object/from16 v111, v73

    move-object/from16 v112, v76

    move-object/from16 v113, v77

    move-object/from16 v114, v125

    invoke-direct/range {v108 .. v116}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    aput-object v71, v131, v70

    const/16 v70, 0x10

    aput-object v104, v131, v70

    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v109, 0x0

    const-string v110, "exclude-result-prefixes"

    const/16 v111, 0x14

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x2

    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v109, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v110, 0x0

    const-string v111, "extension-element-prefixes"

    const/16 v112, 0xf

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x2

    invoke-direct/range {v109 .. v115}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v110, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v111, 0x0

    const-string v112, "id"

    const/16 v113, 0x1

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x2

    invoke-direct/range {v110 .. v116}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v111, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v112, 0x0

    const-string v113, "version"

    const/16 v114, 0xd

    const/16 v115, 0x1

    const/16 v116, 0x0

    const/16 v117, 0x2

    invoke-direct/range {v111 .. v117}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v112, Lorg/apache/xalan/processor/XSLTElementDef;

    const-string v114, "http://www.w3.org/1999/XSL/Transform"

    const-string v115, "stylesheet"

    const-string v116, "transform"

    const/16 v70, 0x5

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v118, v0

    const/16 v70, 0x0

    aput-object v109, v118, v70

    const/16 v70, 0x1

    aput-object v108, v118, v70

    const/16 v70, 0x2

    aput-object v110, v118, v70

    const/16 v70, 0x3

    aput-object v111, v118, v70

    const/16 v70, 0x4

    aput-object v43, v118, v70

    new-instance v119, Lorg/apache/xalan/processor/ProcessorStylesheetElement;

    invoke-direct/range {v119 .. v119}, Lorg/apache/xalan/processor/ProcessorStylesheetElement;-><init>()V

    const/16 v120, 0x0

    const/16 v121, 0x1

    const/16 v122, -0x1

    const/16 v123, 0x0

    move-object/from16 v113, p0

    move-object/from16 v117, v131

    invoke-direct/range {v112 .. v123}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V

    const/16 v70, 0x3

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput-object v112, v70, v71

    const/16 v71, 0x1

    aput-object v69, v70, v71

    const/16 v71, 0x2

    aput-object v75, v70, v71

    move-object/from16 v0, v106

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setElements([Lorg/apache/xalan/processor/XSLTElementDef;)V

    const/16 v70, 0x3

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    aput-object v112, v70, v71

    const/16 v71, 0x1

    aput-object v69, v70, v71

    const/16 v71, 0x2

    aput-object v75, v70, v71

    move-object/from16 v0, v107

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setElements([Lorg/apache/xalan/processor/XSLTElementDef;)V

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v70, 0x4

    move/from16 v0, v70

    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v117, v0

    const/16 v70, 0x0

    aput-object v112, v117, v70

    const/16 v70, 0x1

    aput-object v66, v117, v70

    const/16 v70, 0x2

    aput-object v69, v117, v70

    const/16 v70, 0x3

    aput-object v75, v117, v70

    const/16 v118, 0x0

    new-instance v119, Lorg/apache/xalan/processor/ProcessorStylesheetDoc;

    invoke-direct/range {v119 .. v119}, Lorg/apache/xalan/processor/ProcessorStylesheetDoc;-><init>()V

    const/16 v120, 0x0

    move-object/from16 v113, p0

    invoke-virtual/range {v113 .. v120}, Lorg/apache/xalan/processor/XSLTSchema;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    return-void
.end method

.method public elementAvailable(Lorg/apache/xml/utils/QName;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getElemsAvailable()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    return-object v0
.end method
