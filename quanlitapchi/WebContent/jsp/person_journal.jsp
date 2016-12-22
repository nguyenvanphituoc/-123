<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="inner-center">
	<ul class="nav nav-tabs" id="tab">
		<li role="presentation" class="active"><a
			href="person_journal.jsp">Recent</a></li>
		<c:set scope="session" value="${user.uClass}" var="myclass" />
		<c:if test="${myclass == 0}">
			<li role="presentation"><a href="submitManuscript.jsp">Hello
					my Boss</a></li>
		</c:if>
		<c:if test="${myclass == 1}">
			<li role="presentation"><a href="editor_room.jsp">Room</a></li>
		</c:if>
		<c:if test="${myclass == 2}">
			<li role="presentation"><a href="submitManuscript.jsp">Manuscript</a></li>
		</c:if>
		<c:if test="${myclass == 3}">
			<li role="presentation"><a href="reviewlist.jsp">ReviewList</a></li>
		</c:if>
	</ul>
	<div class="content">
		<table class="table table-striped">
			<thead class="table-header" title="Recent &amp Favorites">
			</thead>
			<tbody>
				<tr>
					<td class="media">
						<div class="media-left media-middle">
							<i class="glyphicon glyphicon-star non-favorite"
								aria-hidden="true"></i>
						</div>
						<div class="media-body">
							<h5 class="media-heading">
								<a title="Editor Note"
									href="http://www.omicsgroup.org/journals/editor-note-2167-0420-1000e124.pdf"
									target="_blank">Editor Note</a>
							</h5>
							<p>
								<small>Bunc V</small><span class="bg-success pull-right"><a
									title="Journal of Women's Health Care"
									href="http://www.omicsgroup.org/journals/ArchiveJWHC/currentissue-womens-health-care-open-access.php"
									class="fr" target="_blank">Journal of Women's Health Care</a> </span>
							</p>
						</div>
					</td>
				</tr>
				<tr>
					<td class="media">
						<div class="media-left media-middle">
							<i class="glyphicon glyphicon-star non-favorite"
								aria-hidden="true"></i>
						</div>
						<div class="media-body">
							<h5 class="media-heading">
								<a
									title="Predictors of Pregnancy Outcome in Antiphospholipid Syndrome: A Review"
									href="http://www.omicsonline.org/open-access/predictors-of-pregnancy-outcome-in-antiphospholipid-syndrome-a-review-2155-6121-1000239.php?aid=79907"
									target="_self">Predictors of Pregnancy Outcome in
									Antiphospholipid Syndrome: A Review</a>
							</h5>
							<p>
								<small>Sara Tabacco, Silvia Salvi, De Carolis Sara,
									Angela Botta, Sergio Ferrazzani, Garufi Cristina, Benedetti
									Panici Pierluigi, Lanzone Antonio and De Carolis Maria Pia</small><span
									class="bg-success pull-right"><a
									title="Journal of Allergy & Therapy"
									href="http://www.omicsonline.org/ArchiveJAT/currentissue-allergy-therapy-open-access.php"
									class="fr" target="_self">Journal of Allergy & Therapy</a> </span>
							</p>
						</div>
					</td>
				</tr>
				<tr>
					<td class="media">
						<div class="media-left media-middle">
							<i class="glyphicon glyphicon-star favorite" aria-hidden="true"></i>
						</div>
						<div class="media-body">
							<h5 class="media-heading">
								<a
									title="Developing New Organic Nitrates for Treating Hypertension: A Review"
									href="http://www.omicsgroup.org/journals/developing-new-organic-nitrates-for-treating-hypertension-a-review-2167-1095-1000232.php?aid=79856"
									target="_blank">Developing New Organic Nitrates for
									Treating Hypertension: A Review</a>
							</h5>
							<p>
								<small>Suenia K. P. Porpino, Renata A. Travassos, Danilo
									D. A. Gadelha, Camille M. Balarini, Josiane C Cruz, Alexsandro
									F. Santos, Petr&ocirc;nio F. Athayde- Filho, Valdir A. Braga
									and Maria S. Fran&ccedil;a-Silva</small><span
									class="bg-success pull-right"><a
									title="Journal of Hypertension: Open Access"
									href="http://www.omicsgroup.org/journals/ArchiveJHOA/currentissue-hypertension-open-access.php"
									class="fr" target="_blank">Journal of Hypertension: Open
										Access</a> </span>
							</p>
						</div>
					</td>
				</tr>
				<tr>
					<td class="media">
						<div class="media-left media-middle">
							<i class="glyphicon glyphicon-star non-favorite"
								aria-hidden="true"></i>
						</div>
						<div class="media-body">
							<h5 class="media-heading">
								<a
									title="Diastolic Pulmonary Arterial Pressure as a Prognostic Indicator for Closure of Atrial Septal Defect with Severe Pulmonary Arterial Hypertension"
									href="http://www.omicsgroup.org/journals/diastolic-pulmonary-arterial-pressure-as-a-prognostic-indicator-for-closure-of-atrial-septal-defect-with-severe-pulmonary-arterial-2167-1095-1000231.php?aid=79855"
									target="_blank">Diastolic Pulmonary Arterial Pressure as a
									Prognostic Indicator for Closure of Atrial Septal Defect with
									Severe Pulmonary Arterial Hypertension</a>
							</h5>
							<small><p>Yan Chaowu, Pan Xiangbin, Xu Zhongying,
									Zhang Gejun, Zheng Hong, Jin Jinglin, Li Shiguo, Lv Jianhua, Hu
									Haibo, Song Huijun, Liu Qiong, Wan Junyi, Xu Liang, Zhu
									Zhenhui, Pang Kunjing and Wang Yang</p></small><span
								class="bg-success pull-right"><a
								title="Journal of Hypertension: Open Access"
								href="http://www.omicsgroup.org/journals/ArchiveJHOA/currentissue-hypertension-open-access.php"
								class="fr" target="_blank">Journal of Hypertension: Open
									Access</a> </span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="media">
						<div class="media-left media-middle">
							<i class="glyphicon glyphicon-star favorite" aria-hidden="true"></i>
						</div>
						<div class="media-body">
							<h5 class="media-heading">
								<a
									title="Protracted Refractory Pain Post TEVAR: Post Implantation Syndrome?"
									href="http://www.omicsgroup.org/journals/protracted-refractory-pain-post-tevar-post-implantation-syndrome-2167-1095-1000230.php?aid=79853"
									target="_blank">Protracted Refractory Pain Post TEVAR: Post
									Implantation Syndrome?</a>
							</h5>
							<small>Peter Waweru, Hardeep Gill and Chris Abeid</small><span
								class="bg-success pull-right"><a
								title="Journal of Hypertension: Open Access"
								href="http://www.omicsgroup.org/journals/ArchiveJHOA/currentissue-hypertension-open-access.php"
								class="fr" target="_blank">Journal of Hypertension: Open
									Access</a> </span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="media">
						<div class="media-left media-middle">
							<i class="glyphicon glyphicon-star non-favorite"
								aria-hidden="true"></i>
						</div>
						<div class="media-body">
							<h5 class="media-heading">
								<a
									title="A Comparitive Study on Politics in Sathyajith Ray’s Films-Appu Triology, Mahanagar, Jana Aranya, Charulatha and Pathirdwani"
									href="http://www.omicsgroup.org/journals/a-comparitive-study-on-politics-in-sathyajith-rays-filmsappu-triology-mahanagar-jana-aranya-charulatha-and-pathirdwani-2165-7912-1000316.php?aid=79842"
									target="_blank">A Comparitive Study on Politics in
									Sathyajith Ray’s Films-Appu Triology, Mahanagar, Jana Aranya,
									Charulatha and Pathirdwani</a>
							</h5>
							<p>
								<small>Ramis Salam P</small><span class="bg-success pull-right"><a
									title="Journal of Mass Communication & Journalism"
									href="http://www.omicsgroup.org/journals/ArchiveJMCJ/currentissue-mass-communication-journalism-open-access.php"
									class="fr" target="_blank">Journal of Mass Communication &
										Journalism</a> </span>
							</p>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<script type="text/javascript" src="../js/tabload.js">
<!--
	
//-->
</script>

